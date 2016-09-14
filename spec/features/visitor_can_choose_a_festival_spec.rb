require 'rails_helper'

describe 'Visitor can search for festivals', type: :feature do
  context 'there is a form for parameters on the root page' do
    scenario 'and sees a list of festivals on the index page' do

      visit root_path

      select 'Denver, CO', from: :location
      select 'October', from: :date
      select '0 miles', from: :radius
      click_on 'Submit'

    end
  end
end
