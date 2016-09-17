require 'rails_helper'

describe 'User can create an account', type: :feature do
  scenario 'and views the user dashboard' do

    visit root_path

    click_link 'Create an account'
    fill_in 'Name', with: 'Alan'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create Account'

    expect(page).to have_content 'Welcome, Alan'
    expect(page).not_to have_content 'Create an account'
  end
end
