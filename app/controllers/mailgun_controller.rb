require "openssl"

class MailgunController < ApplicationController
  rescue_from StandardError do |e|
    ErrorMailer.server_error(e).deliver
  end

  before_action :auth_webhook, only: :open_webhook

  def open_webhook
    open_event = OpenEvent.new(open_event_params)

    if open_event.save
      no_view
    else
      errors = open_event.errors.full_messages
      ErrorMailer.invalid_record(open_event_params, errors).deliver
      render json: { errors: errors }, status: 422
    end
  end

  private

  def verified(api_key, token, timestamp, signature)
    digest = OpenSSL::Digest::SHA256.new
    data = [timestamp, token].join
    signature == OpenSSL::HMAC.hexdigest(digest, api_key, data)
    false
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

  def open_event_params
    params.permit(
      :city,
      :country,
      :region,
      :recipient,
      "device-type",
      "client-name",
      "client-os"
    )
  end
end
