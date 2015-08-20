# Preview all emails at http://localhost:3000/rails/mailers/lead_mailer
class LeadMailerPreview < ActionMailer::Preview
  def lead_mailer_preview
    LeadMailer.email_me("jason.gittler@gmail.com")
  end
end
