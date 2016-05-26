require "openssl"

class MailgunController < ApplicationController
  rescue_from StandardError do |e|
    ErrorMailer.server_error(e).deliver
  end

  before_action :auth_webhook, only: :webhook

  def webhook
    event = Event.new(event_params)

    if event.save
      no_view
    else
      errors = event.errors.full_messages
      ErrorMailer.invalid_record(event_params, errors).deliver
      render json: { errors: errors }, status: 422
    end
  end

  private

  def verified(api_key, token, timestamp, signature)
    digest = OpenSSL::Digest::SHA256.new
    data = [timestamp, token].join
    signature == OpenSSL::HMAC.hexdigest(digest, api_key, data)
  end

  def auth_webhook
    unless verified(mg_api_key, mg_token, event_time, mg_signature)
      ErrorMailer.failed_auth(open_event_params, mg_api_key, mg_token, event_time, mg_signature).deliver
      render json: { errors: "You are not allowed to post here." }, status: 406
    end
  end

  def mg_api_key
    Rails.application.secrets.mailgun_private_api_key
  end

  def mg_token
    params.fetch("token")
  end

  def event_time
    params.fetch("timestamp")
  end

  def mg_signature
    params.fetch("signature")
  end

  def event_params
    params.permit(
      :event,
      :city,
      :country,
      :region,
      :recipient,
      "device-type",
      "client-name",
      "client-os",
      :ip,
      "client-type",
      "mailing-list"
    )
  end
end
