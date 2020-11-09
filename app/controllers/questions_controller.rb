QUESTION_WORK = "I am going to work"
ANSWER_WORK = "Great!"
ANSWER_QUESTION = "Silly question, get dressed and go to work!"
ANSWER_ELSE = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = the_answer(@question)
  end

  def the_answer(question)
    question?(question) ? ANSWER_QUESTION : ((question === QUESTION_WORK) ? ANSWER_WORK : ANSWER_ELSE)
  end

  def question?(question)
    question.nil? ? false : question.end_with?('?')
  end

end
