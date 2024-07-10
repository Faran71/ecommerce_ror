require 'rails_helper'

RSpec.feature "User Signup", type: :feature do
  scenario "User signs up with valid information" do
    visit 'http://localhost:3000/users'  # Replace with your external frontend endpoint
    # fill_in 'Email', with: 'user@example.com'
    # fill_in 'Password', with: 'password'
    # click_button 'Sign Up'
    expect(page).to have_content 'Welcome, user@example.com!'
  end
end
