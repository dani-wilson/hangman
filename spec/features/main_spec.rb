require "rails_helper"

RSpec.describe "the main page" do
  it "exists" do
    visit "/"

    expect(page).to have_content("Begin")
  end
end

