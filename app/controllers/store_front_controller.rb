class StoreFrontController < ApplicationController
  def index
    if params[:search]
      @products = Prodduct.search_by_name_or_description(params[:search])
      if @products.empty?
        flash.now[:notice] = "No result found for '#{params[:search]}', showing all products."
        @products = Product.all
      end
    elseif params[:category_id]
      @category = Category.find(params[@category.id])
      @products = Product.where(category_id: @category_id)
    else
    @products = Product.all
    end
  end
  def about 
  end
end
