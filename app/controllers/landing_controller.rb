class LandingController < ApplicationController
  def kickstarter
    @about_active = ""
    @charity_active = ""
    @konvoy = Product.new(:konvoy)
    @fantom = Product.new(:fantom)
    @heron = Product.new(:heron)
  end

  def about
    @about_active = "active"
    @charity_active = ""
  end

  def charity
    @about_active = ""
    @charity_active = "active"
  end

  def share
  end

  def lead_email
    email = params[:email]
    LeadMailer.email_me(email).deliver
    render nothing: true, head: :ok
  end
end
