class CategoriesController < ApplicationController
  # before_action :authorize
  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

  protect_from_forgery with: :exception



end
