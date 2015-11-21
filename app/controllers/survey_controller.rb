class SurveyController < ApplicationController
  before_action :set_hidden_inputs!, expect: :complete_survey

  def charity_question
    @question_type = "Charity"
    @question = "Do you like it?"
  end

  def made_question
    @question_type = "Made"
    @question = "Do you like it?"
  end

  def warranty_question
    @question_type = "Warranty"
    @question = "Do you like it?"
  end

  def quality_question
    @question_type = "Quality"
    @question = "Do you like it?"
  end

  def complete_survey
    no_view
  end

  private

  def set_hidden_inputs!
    # @theme = action_name.match(/[^_]+(?=_)/).to_s.presence || "error" rescue "error"
    @address = Geocoder.search(request.remote_ip).first
  end
end
