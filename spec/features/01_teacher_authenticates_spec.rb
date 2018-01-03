require 'rails_helper'

# As a teacher
# I want to login
# So that I can see a list of classes

# Acceptance Criteria:
# visiting index should show a login button
# teacher can login from any page of the application

feature "A teacher creates an account" do
  context "teacher visits the create account page" do
    scenario "Teacher successfully creates an account" do

      visit new_user_registration_path
      fill_in "Email", with: "me@me.com"
      fill_in "Password", with: "1234567"
      fill_in "Password confirmation", with: "1234567"
      click_button "Sign up"

      expect(page).to have_content "Welcome! You have signed up successfully."

    end

    scenario 'user fails to create an account' do
      visit new_user_registration_path
      click_on 'Sign up'
      click_on 'Sign up'

      expect(page).to have_content('2 errors prohibited this user from being saved:')
      expect(page).to have_content('Sign up')
    end
  end
end
