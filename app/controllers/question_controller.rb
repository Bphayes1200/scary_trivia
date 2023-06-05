class QuestionController < ApplicationController
  def index
    @question = TriviaFacade.sports_trivia
  end
end