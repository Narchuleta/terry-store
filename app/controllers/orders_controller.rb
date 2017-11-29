class OrdersController < ApplicationController
  include CurrentCart
  before_action :authenticate_user!
  before_action :set_cart, only: [:new, :create]
  
  def new
    if @cart.line_items.empty?
        redirect_to shop_url, notice: 'Your cart is empty'
        return
    end
  end
  
  def show
  end
end
