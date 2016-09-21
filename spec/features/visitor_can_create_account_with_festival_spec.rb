require 'rails_helper'

describe 'Visitor can log in with festival' do
  context 'Fesival id is stored in the session' do
    scenario 'and views the festival show page' do
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

      click_link 'Create account to save Search'
      marker = 1
      marker += 1
      fill_in 'Name', with: 'NewUser[marker]'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on 'Create Account'

      expect(page).to have_content "Pumpkin Festival"
      expect(page).to have_content "Denver"
      expect(page).to have_content "Colorado"
      expect(page).to have_content "1007 York Street"
    end
  end
end
