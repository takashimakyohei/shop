class CartsController < ApplicationController
  def index
    @cart_products =current_user.cart_products
  end

def create
    cart = Cart.new
    cart.user_id = current_user.id
    cart.product_id = params[:product_id]

    if cart.save
      redirect_to products_path, success: "カートに入れました。"
    else
      redirect_to products_path, danger: 'カートに入りませんでした'
    end
end
end