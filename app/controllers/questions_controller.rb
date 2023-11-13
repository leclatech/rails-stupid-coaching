class QuestionsController < ApplicationController
  def ask
  end

  def submit
    @question = params[:question]
    if @question == 'I am going to work'
      @submit = 'Great!'
    elsif @question.include?("?")
      @submit = 'Silly question, get dressed and go to work!'
    else
      @submit = 'I dont care, get dressed and go to work!'
    end
  end
end
