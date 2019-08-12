class CartsController < ApplicationController
  def index
    @cart_products =current_user.cart_products
    @total_price = 0
    @cart_products.each do |product|
      @total_price += product.price
      
    end
  end

def create
    cart = Cart.new
    cart.user_id = current_user.id
    cart.product_id = params[:product_id]

    if cart.save
      redirect_to products_path, success: "カートに入れました。"
  
    end
end

  def show
    @cart_products = Product.find(params[:id])
  end

end