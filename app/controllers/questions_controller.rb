# require_relative "coach_answer"
class QuestionsController < ApplicationController
  def ask

  end
  def answer
    if params[:question]
      @question = params[:question]
      if @question.include?("?")
        @answer = "Silly question, get dressed and go to work!"
      elsif @question == "I am going to work"
        @answer = "Great!"
      elsif @question.instance_of?(String)
        @answer = "I don't care, get dressed and go to work!"
      end
    end

  end
end
