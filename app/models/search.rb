class Search < ApplicationRecord
  belongs_to :user

  validates :festival_name, uniqueness: { scope: :user_id }
end
