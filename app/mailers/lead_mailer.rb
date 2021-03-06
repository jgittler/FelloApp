class LeadMailer < ApplicationMailer
  DESTINATION = 'contact@felloeyewear.com'

  def email_me(contact)
    @email = contact[:email]
    mail(to: DESTINATION, subject: 'Someone sent us their email from our contact form.')
  end

  def email_from_survey(contact)
    @email = contact[:email]
    @theme = contact[:Theme]
    @country = contact[:Country]
    @state = contact[:State]
    @city = contact[:City]
    @referer = contact[:Referer]

    mail(to: DESTINATION, subject: 'Someone sent us their email from our survey page.')
  end
end
