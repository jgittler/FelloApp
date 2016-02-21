class LandingController < ApplicationController
  ACTIVE_NAV_CLASS = "active"

  def indiegogo
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

  def founders
    @sasha = Founder.new(:sasha)
    @jonathan = Founder.new(:jonathan)
    @jason = Founder.new(:jason)
  end

  def fello_warranty
  end
end
