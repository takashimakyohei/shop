class OrdersController < ApplicationController
  def index
    
  end
  
  def create
  current_user.carts.each do |cart|
    #order = Order.new(:cart_id =>params[:cart][:cart_id])
    order = Order.new(user_id:cart.user_id, product_id:cart.product_id)
     order.save
      redirect_to products_path, success: "購入しました"
      cart.destroy
    end
  end
  
 # def destroy
  #order.delete
#end
 
  

end
