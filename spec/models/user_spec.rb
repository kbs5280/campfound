require 'rails_helper'

describe User, type: :model do
  it { should have_secure_password }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:searches) }
end
