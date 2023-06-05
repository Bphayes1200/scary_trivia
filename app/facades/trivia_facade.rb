class TriviaFacade 

  def self.sports_trivia
    question = TriviaService.get_sports_trivia
      Question.new(question)
  end
end