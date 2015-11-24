class SurveyController < ApplicationController
  before_action :set_shared_inputs!, expect: :complete_survey
  # before_action :check_referer, expect: :complete_survey

  def charity_question
    @question_type = "Charity"
    @question = "
      With each pair of sunglasses sold, we donate $5 towards providing eye-care to those in need.
      Would you be interested in supporting our cause?
    "
  end

  # def made_question
  #   @question_type = "Made"
  #   @question = "Do you like it?"
  # end
  #
  # def warranty_question
  #   @question_type = "Warranty"
  #   @question = "Do you like it?"
  # end
  #
  # def quality_question
  #   @question_type = "Quality"
  #   @question = "Do you like it?"
  # end

  def complete_survey
    no_view
  end

  private

  def set_shared_inputs!
    @email_message = "Enter your email if you'd like to be informed when we launch."
    @address = Geocoder.search(request.remote_ip).first
  end

  # def check_referer
  #   if Rails.env.production?
  #     unless request.env["HTTP_REFERER"]
  #       redirect_to kickstarter_path and return
  #     end
  #   end
  # end
end
