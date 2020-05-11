class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # store question in variable so we can display it
    @question = params[:question]
    # create an if which will define a variable called answer to display
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
