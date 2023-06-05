require "rails_helper"

RSpec.describe TriviaService do 
  before :each do 
    question = File.read("spec/fixtures/sports_trivia.json")
       stub_request(:get,"https://api.api-ninjas.com/v1/trivia/category=sportsleisure")
      .to_return(status: 200, body: question)
  end

  it "returns a sports trivia question" do 
    sports_question = TriviaService.get_sports_trivia

    expect(sports_question.first[:question]).to eq("On A Netball Players Bib What Do The Letters G.A. Stand For? ")
    expect(sports_question.first[:answer]).to eq("Goal Attack")
  end
end