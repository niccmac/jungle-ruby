class ProductsController < ApplicationController
  # before_filter :authorize Should be able to see products
  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
