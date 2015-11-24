class LeadMailer < ApplicationMailer
  DESTINATION = 'contact@felloeyewear.com'

  def email_me(contact)
    @email = contact[:email]
    mail(to: DESTINATION, subject: 'Someone sent us their email from our contact form.')
  end

  def email_from_survey(contact)
    @email = contact[:email]
    @theme = contact[:theme]
    @country = contact[:country]
    @city = contact[:city]

    mail(to: DESTINATION, subject: 'Someone sent us their email from our survey page.')
  end
end
