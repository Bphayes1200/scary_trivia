require "rails_helper"

RSpec.describe "Trivia Facade" do
  before :each do 
    question = File.read("spec/fixtures/sports_trivia.json")
       stub_request(:get,"https://api.api-ninjas.com/v1/trivia/category=sportsleisure")
      .to_return(status: 200, body: question)
  end

  it "will return a question object" do 
    question = TriviaFacade.sports_trivia

    expect(question.question).to eq("On A Netball Players Bib What Do The Letters G.A. Stand For? ")
    expect(question.answer).to eq("Goal Attack")
  end
end