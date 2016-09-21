require 'rails_helper'

describe 'User enters invalid URL', type: :feature do
  scenario 'and is redirected to 404 page' do

    visit '/this_is_not_a_page'

    expect(page).to have_content 'The page you are looking for does not exist'
  end
end
