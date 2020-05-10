require 'rails_helper'



RSpec.feature "Sign in", type: :feature do

  scenario "user can sign in"  do 
    user = User.create(name: "User", email: "user@example.com", password: "12345")
    visit "sessions/new"
    fill_in 'session[email]', with: 'user'
    fill_in  'session[password]', with: '12345'
    click_on 'Sign in'
    expect(page).to have_content('Welcome User')
  end 
end