require "rails_helper"

RSpec.describe "the main page" do
  it "exists" do
    visit "/"
    
    expect(page).to have_css(".game-image")
  end

  it "has a word bank" do
    visit "/"

    expect(page).to have_css(".letter-bank")
  end

  it "can guess a letter" do
    game = Game.new
    game.word = "academy"

    visit "/"

    click_button("B")

    expect(page).to have_content("Incorrect!")
    expect(page).to have_css(".game-image")
  end

  #TO DO
  # display letter bank (done)
  # incorrect guess logic
  # correct guess logic
  # , disabled: @guessed_letters.include?(letter) (letter bank)
end

