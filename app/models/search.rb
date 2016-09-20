class Search < ApplicationRecord
  belongs_to :user

  validates :festival_name, uniqueness: { scope: :user_id,
                                          message: 'you only need to save each festival once...' }
end
