class User < ApplicationRecord

  has_secure_password

  def strip_whitespace
    self.email = self.email.strip unless self.email.nil?
  end
  
  before_validation :strip_whitespace
  validates_uniqueness_of :email, :case_sensitive => false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { minimum: 6 }


  def self.authenticate_with_credentials(email, password) 
    # self at front of method makes this a class method
    checkUser = User.find_by(email: email)&.authenticate(password)
    puts password
    if checkUser
     checkUser
    else
      nil
    end
  end
end

