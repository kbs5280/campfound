require 'rails_helper'

describe 'User can log in', type: :feature do
  scenario 'and views the user dashboard' do
    user = User.create(name: 'Alan', password: 'password')

    visit root_path

    click_link 'Login'
    expect(current_path).to eq('/login')
    fill_in 'Name', with: user.name
    fill_in 'Password', with: user.password
    click_button 'Login'

    expect(page).to have_content 'Welcome, Alan'
    expect(page).not_to have_content 'Login'
  end
end
