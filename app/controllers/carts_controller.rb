class CartsController < ApplicationController
  def index
    @cart_products =current_user.cart_products
    @total_price = 0
    @cart_products.each do |product|
      @total_price += product.price
      
    end
  end

def create
    cart = Cart.new(:user_id => current_user.id, :product_id => params[:cart][:product_id], :quanity => params[:cart][:quanity])

    if cart.save
      redirect_to products_path, success: "カートに入れました。"
  
    end
end

  def show
    @cart_products = Product.find(params[:id])
  end

end