require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = StruggleTableFlipperApp

feature "show a random happy emoji on the home page" do
  scenario "the happy emoji appears" do
    srand(67809)
    visit("/")
    expect(page).to have_content(":)")
  end
end
