class EmailController < ApplicationController
  def lead_email
    LeadMailer.email_me(email_param).deliver

    no_view
  end
  
  def email_from_survey
    LeadMailer.email_from_survey(survey_email_params).deliver

    no_view
  end

  private

  def survey_email_params
    params.permit(:email, :theme, :country, :city)
  end

  def email_param
    params.permit(:email)
  end
end