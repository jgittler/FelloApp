class SurveyController < ApplicationController
  before_action :set_shared_inputs!, expect: :complete_survey
  # before_action :check_referer, expect: :complete_survey

  def charity_question
    @question_type = "Charity"
    @question = "Fello donates $5 towards providing eye-care around the world with each purchase. Do feel this a good cause, and is something that draws you to Fello?"
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
    @email_message = "Lorem ipsum dolor sit amet, sociosqu sapien erat ultricies, nec lectus fusce donec pretium. At neque purus vestibulum a, libero metus massa consequat, a posuere, nonummy curabitur taciti, integer eget nibh vel diam ut. Viverra nascetur tincidunt, sed ligula nunc elit, imperdiet non proin lacus hac quisque convallis."
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
