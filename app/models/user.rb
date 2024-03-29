class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :priviledge
  has_secure_password
  before_save :create_remember_token
  has_many :questionares
  
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
