require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validation" do

    it "Created with correct details" do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "test@test.com", password: "123", password_confirmation: "123"
      expect(user).to be_valid
    end

    it "Created without matching password and password_confirmation" do
      user = User.create first_name: "Fake Name", last_name: "Fake Last Name", email: "test@test.com", password: "123", password_confirmation: "124"
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

  end 
end
