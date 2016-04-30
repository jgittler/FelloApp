class SurveyController < ApplicationController
  # before_action :set_shared_inputs!, expect: :complete_survey
  #
  # def charity_question
  #   @question_type = "Charity"
  #   @question = "
  #     With each pair of sunglasses sold, we donate $5 towards providing eye-care to those in need.
  #     Would you be interested in supporting our cause?
  #   "
  # end
  #
  # def made_question
  #   @question_type = "Made"
  #   @question = "
  #     Fello is an American brand.
  #     Do you like to support American companies?
  #   "
  # end
  #
  # def warranty_question
  #   @question_type = "Warranty"
  #   @question = "
  #     What if you could use Social Media to protect your products!
  #     Have your sunglasses ever been lost, stolen, or broken?
  #     We are creating a company that will replace your Fello Sunglasses
  #     for free if you share our post on Facebook.
  #     Would you be excited for this warranty?
  #   "
  # end
  #
  # def celeb_question
  #   @question_type = "Celeb"
  #   @question = "
  #     What if you could use Social Media to protect your products!
  #     Have your sunglasses ever been lost, stolen, or broken?
  #     We are creating a company that will replace your Fello Sunglasses
  #     for free if you share our post on Facebook.
  #     Would you share us on Facebook to earn a free pair?
  #   "
  # end
  #
  # def quality_question
  #   @question_type = "Quality"
  #   @question = "
  #     Do you buy sunglasses for the brand name or
  #     for their style and quality?
  #   "
  #   @answers.one = "Brand Name"
  #   @answers.two = "Quality/Style"
  #   @css = "font-size: 14px; color: black; border-color: black;"
  # end
  #
  # def complete_survey
  #   no_view
  # end
  #
  # private
  #
  # def set_shared_inputs!
  #   @email_message = "Enter your email if you'd like to be informed when we launch."
  #   @address = Geocoder.search(request.remote_ip).first
  #   @referer = request.env["HTTP_REFERER"] || "none"
  #   @answers = OpenStruct.new(one: "Yes", two: "No")
  # end
end
