class CartsController < ApplicationController
  def index
    @cart_products = current_user.cart_products
    @carts =current_user.carts
    @total_price = 0
    @carts.each do |cart|
      @total_price += cart.product.price * cart.quantity
      
    end
    
  end

def create
    cart = Cart.new(:user_id => current_user.id, :product_id => params[:cart][:product_id], :quantity => params[:cart][:quantity])

    if cart.save
      redirect_to products_path, success: "カートに入れました。"
  
    end
end

  def show
    @cart_products = Product.find(params[:id])
  end

end