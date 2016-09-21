require 'rails_helper'

describe 'User can log in with with Google', type: :feature do
  scenario 'and is redirected to the user dashboard' do
    stub_setup

    visit root_path
    click_link 'Sign in with Google'

    expect(page).to have_content('Kris Sparks')
  end
end
