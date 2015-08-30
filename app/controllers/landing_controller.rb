class LandingController < ApplicationController
  def kickstarter
  end

  def about
  end

  def lead_email
    email = params[:email]
    LeadMailer.email_me(email).deliver
    render nothing: true, head: :ok
  end
end
