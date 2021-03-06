class User < ApplicationRecord
  has_secure_password

  validates :name, uniqueness: true

  has_many :searches

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider         = auth.provider
      user.uid              = auth.uid
      user.name             = auth.info.name
      user.oauth_token      = auth.credentials.token
      user.password_digest  = SecureRandom.urlsafe_base64
      user.save!
    end
  end
end
