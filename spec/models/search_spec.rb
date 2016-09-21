require 'rails_helper'

describe Search, type: :model do
  it { should belong_to(:user) }
  it { should validate_uniqueness_of(:festival_name).scoped_to(:user_id) }
end
