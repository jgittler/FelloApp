class LeadMailer < ApplicationMailer
  def email_me(email)
    @email = email
    mail(to: 'contact@felloeyewear.com', subject: 'Someone sent us their email.')
  end
end
