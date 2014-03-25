require 'rspec/core'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "manage tasks" do
  scenario "users can create a task" do
    visit '/'

    fill_in "task", with: "Buy a car"
    click_on "Create task"

    expect(page).to have_content("Buy a car")
  end
end

