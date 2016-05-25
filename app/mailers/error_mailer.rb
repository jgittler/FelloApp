class ErrorMailer < ApplicationMailer
  DESTINATION = 'contact@felloeyewear.com'

  def server_error(e)
    @error = e.inspect
    mail(to: DESTINATION, subject: "Something is wrong with in the mail gun controller, 500's!")
  end

  def invalid_record(params_hash, model_errors)
    @params = params_hash
    @errors = model_errors
    mail(to: DESTINATION, subject: "OpenEvent failed to save.")
  end

  def failed_auth(params_hash, key, token, time, sig)
    @params = params_hash
    @key = key
    @token = token
    @time = time
    @sig = sig
    mail(to: DESTINATION, subject: "Mailgun failed auth.")
  end
end
