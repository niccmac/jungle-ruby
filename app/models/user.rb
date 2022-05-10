class User < ApplicationRecord

  has_secure_password

  validates_uniqueness_of :email, :case_sensitive => false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { minimum: 6 }

end

