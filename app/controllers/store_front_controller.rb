class StoreFrontController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[@category.id])
      @products = Product.where(category_id: @category_id)
    else
    @products = Product.all
    end
  end
  def about 
  end
end
