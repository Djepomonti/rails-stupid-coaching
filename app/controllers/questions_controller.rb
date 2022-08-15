class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @reponse = reponse(@question)
  end

  def reponse(question)
    if question.downcase == 'i am going to work right now!'
      'Great'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
