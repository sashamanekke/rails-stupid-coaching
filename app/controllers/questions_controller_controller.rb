class QuestionsControllerController < ApplicationController

  def answer
    @question = params[:query]
    @answer = "I can feel your motivation!" if @question == @question.upcase
    if @question.end_with?("?")
      @answer = "#{@answer} Silly question, get dressed and go to work!"
    elsif @question.include?("I AM GOING TO WORK RIGHT NOW!" || "I am going to work right now!")
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end

  def ask
  end
end
