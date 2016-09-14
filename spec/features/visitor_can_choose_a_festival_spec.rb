require 'rails_helper'

describe 'Visitor can search for festivals', type: :feature do
  context 'there is a form for parameters on the root page' do
    scenario 'and sees a list of festivals on the index page' do

      visit root_path

      select 'Denver, CO', from: :location
      select 'October', from: :date
      select '10 miles', from: :radius
      click_on 'Submit'

      expect(current_path).to eq(festivals_path)

      expect(page).to have_content "Harvest Festival & Grape Stomp"
      expect(page).to have_content "Littleton"
      expect(page).to have_content "Colorado"
      expect(page).to have_content "2101 East Arapahoe Road"
      expect(page).to have_content "Pumpkin Festival"
      expect(page).to have_content "Littleton"
      expect(page).to have_content "Colorado"
      expect(page).to have_content "8500 Deer Creek Canyon Rd"
      expect(page).to have_link    "View details and find campgrounds"
    end
  end
end
