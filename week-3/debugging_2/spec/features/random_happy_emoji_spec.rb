require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = StruggleTableFlipperApp

feature "show a random happy emoji on the home page" do

  scenario "the home page returns a successful status code" do
    srand(67809)
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "the happy emoji appears" do
    srand(67809)
    visit("/")
    expect(page).to have_content(":)")
  end

end
