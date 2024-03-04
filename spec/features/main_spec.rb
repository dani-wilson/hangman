require "rails_helper"

RSpec.describe "the main page" do
  it "exists" do
    visit "/"
    save_and_open_page
    expect(page).to have_css("letter-bank")
  end

  it "has a word bank" do
    visit "/"

    expect(page).to have_css("letter-bank")
  end

  #TO DO
  # display letter bank
  # incorrect guess logic
  # correct guess logic
  # , disabled: @guessed_letters.include?(letter) (letter bank)
end

