require 'rails_helper'

describe 'User cannot login with incorrect password', type: :feature do
  scenario 'and is redirected to the root page' do

    visit root_path

    click_link 'Create an account'
    fill_in 'Name', with: 'Alan'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create Account'

    expect(page).to have_content 'Welcome, Alan'
    expect(page).not_to have_content 'Create an account'

    click_on 'Logout'
    click_on 'Login'
    fill_in 'Name', with: 'Alan'
    fill_in 'Password', with: 'incorrect_password'
    click_button 'Login'

    expect(page).not_to have_content 'Welcome, Alan'
    expect(page).to have_content 'Invalid login!'
  end
end
