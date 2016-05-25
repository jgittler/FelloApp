require "openssl"

class MailgunController < ApplicationController
  # before_action :auth_webhook, only: :open_webhook

  def open_webhook
    puts
    puts
    puts params
    puts
    puts
    puts "IM HERE"
    puts
    puts

    no_view
  end

  private

  # def verify(api_key, token, timestamp, signature)
  #   digest = OpenSSL::Digest::SHA256.new
  #   data = [timestamp, token].join
  #   signature == OpenSSL::HMAC.hexdigest(digest, api_key, data)
  # end
  #
  # def auth_webhook
  #   unless verify
  #     render json: { errors: "You are not allowed to post here." }, status: :unauthorized
  #   end
  # end
end
