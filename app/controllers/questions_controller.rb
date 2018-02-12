class QuestionsController < ApplicationController

  # fournit un formulaire html qui pertmet de poser sa question.
  # def ask
  # end

  # reçoit une question, l'affiche avec la réponse adaptée.
  def answer
    @question = params[:question]
    generate_answer
  end

  private

  def generate_answer
    # @answer = nil
    if @question == "I am going to work"
      @answer = "great"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
