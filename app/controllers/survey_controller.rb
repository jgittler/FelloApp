class SurveyController < ApplicationController
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
  end
end
