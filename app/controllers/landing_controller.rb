class LandingController < ApplicationController
  ACTIVE_NAV_CLASS = "active"

  def kickstarter
    @about_active = ""
    @charity_active = ""
    @konvoy = Product.new(:konvoy)
    @fantom = Product.new(:fantom)
    @heron = Product.new(:heron)
  end

  def about
    @about_active = ACTIVE_NAV_CLASS
    @charity_active = ""
  end

  def charity
    @about_active = ""
    @charity_active = ACTIVE_NAV_CLASS
  end

  def share
  end
end
