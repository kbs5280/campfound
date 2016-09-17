require 'rails_helper'

describe 'Visitor can save a festival', type: :feature do
  context 'after searching festivals and choosing one' do
    scenario 'and sees the festival search in the dashboard' do
      user = User.create(name: 'Alan', password: 'password')
      visit root_path

      select 'Denver, CO', from: :location
      select 'October', from: :date
      select '10 miles', from: :radius
      click_on 'Submit'

      expect(current_path).to eq(festivals_path)

      expect(page).to have_content "Pumpkin Festival"
      expect(page).to have_content "Littleton"
      expect(page).to have_content "Colorado"
      expect(page).to have_content "8500 Deer Creek Canyon Rd"
      expect(page).to have_link    "View details and find campgrounds"

      first('.Pumpkin').click_link('View details and find campgrounds')

      expect(page).to have_content "Pumpkin Festival"
      expect(page).to have_content "Denver"
      expect(page).to have_content "Colorado"
      expect(page).to have_content "1007 York Street"
save_and_open_page
      click_link 'Log in to save Search or'

      click_link 'Login'
      expect(current_path).to eq('/login')
      fill_in 'Name', with: user.name
      fill_in 'Password', with: user.password
      click_button 'Login'
      save_and_open_page

      click_button 'Save Search'
      expect(page).to have_content 'Search saved to dashboard'

      click_link 'View dashboard'

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content "Pumpkin Festival"
    end
  end
end
