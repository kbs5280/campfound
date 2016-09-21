require 'rails_helper'

describe 'Visitor cannot view dashboard', type: :feature do
  context 'Visitor does not have an account and is not logged in' do
    scenario 'and is re-routed to the root page' do

    visit dashboard_path

    expect(current_path).to eq root_path
    expect(page).to have_content 'Sign in or log in to view your dashboard'
    end
  end
end
