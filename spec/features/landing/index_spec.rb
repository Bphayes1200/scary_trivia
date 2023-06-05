require "rails_helper"

RSpec.describe "Landing Page" do 
  before :each do 
    visit "/"
  end 

  it "will have a title" do 
    expect(page).to have_content("Welcome to Scary Trivia!")
  end


end