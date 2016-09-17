# require 'rails_helper'
#
# describe 'User can log in with with Google', type: :feature do
#   scenario 'and is redirected to the user dashboard' do
#     stub_omniauth
#
#     visit root_path
#     click_link 'Sign in with Google'
#
#     expect(page).to have_content('Kris Sparks')
#   end
# end
#
# # def stub_setup
# #     Capybara.app = RailsProjectTemplate::Application
# #     stub_omniauth
# # end
#
# def stub_omniauth
#   OmniAuth.config.test_mode = true
#   OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
#     provider: 'google_oauth2',
#     uid: "1234",
#     info: {
#       name: "Kris Sparks"
#     },
#     credentials: {
#       token: "token",
#       secret: "secret"
#     }
#   })
# end
