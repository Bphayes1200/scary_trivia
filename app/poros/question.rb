class Question
  attr_reader :question, :answer
  
  def initialize(data)
    question = data.first
    @question = question[:question]
    @answer = question[:answer]
  end
end