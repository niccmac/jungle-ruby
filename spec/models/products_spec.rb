require 'rails_helper'

catID = Category.find_or_create_by! name: 'Fake Trees'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    it "Product has a valid entries is saved." do 
      product = catID.products.create! name: "Fake Name", quantity: 2, price: 24.49
      expect(product).to be_valid
    end

    it "Product has an invalid entry name." do 
      product = catID.products.create name: nil, quantity: 2, price: 24.49
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it "Product has an invalid entry name." do 
      product = catID.products.create name: nil, quantity: 2, price: 24.49
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it "Product has an invalid price." do 
      product = catID.products.create name: "Fake Name", quantity: 2
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    it "Product has an invalid entry quantity." do 
      product = catID.products.create name: "Fake Name", price: 24.49
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end
  end
end


