require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validation" do

    it "create with correct details." do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "test@test.com", password: "123456", password_confirmation: "123456"
      expect(user).to be_valid
    end

    it "create without matching password and password_confirmation." do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "test@test.com", password: "123456", password_confirmation: "1234657"
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "create without long enough password." do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "test@test.com", password: "12345", password_confirmation: "12345"
      expect(user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it "create with email already in system." do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      user2 = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      expect(user2).to_not be_valid
    end

    it "create without whitespace." do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      user2 = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: " testemail@test.com ", password: "123456", password_confirmation: "123456"
      expect(user2).to_not be_valid
    end

    it "create with email already in system and in UPPER CASE." do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "testemail@TEST.com", password: "123456", password_confirmation: "123456"
      user2 = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      expect(user2).to_not be_valid
    end

    it "create without first name." do
      user = User.create first_name: nil, last_name: "Fake Last Name", email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      expect(user).to_not be_valid
    end

    it "create without last name." do
      user = User.create first_name: "Fake name", last_name: nil, email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      expect(user).to_not be_valid
    end
    
  end 
  
  describe '.authenticate_with_credentials' do
    
    it "create with correct details." do
      user = User.create first_name: "Fake name", last_name: "Fake Last Name", email: "testemail@test.com", password: "123456", password_confirmation: "123456"
      authUser = User.authenticate_with_credentials(user.email, user.password)
      expect(authUser).to eq(user)
    end
  end
end
