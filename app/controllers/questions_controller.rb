class QuestionsController < ApplicationController
  def index
  end

  def ask
  end

  def answer
    @messages = [ "Great", "Silly question, get dressed and go to work!", "I don\'t care, get dressed and go to work!" ]
    if params[:question] == "I am going to work"
      @message = @messages[0]
    elsif params[:question].include?("?")
      @message = @messages[1]
    else
      @message = @messages[2]
    end
  end
end
