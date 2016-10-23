# coding: utf-8

require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = StruggleTableFlipperApp

feature "table flip a struggle" do
  scenario "submit 'Programming' as a struggle and see the table get flipped" do
    visit("/")
    fill_in :struggle, with: "Programming"

    click_button "Flip table"
    expect(page).to have_content "(Programming!!!)> (╯°□°）╯︵ ┻━┻"
  end
end
