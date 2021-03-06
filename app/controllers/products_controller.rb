class ProductsController < ApplicationController
before_action :find_post, only:[:show,:edit,:update,:destroy]

  def home
    
  end
  
  def index
    @products =Product.all
    @cart=Cart.new
  end

  def new
    @product =Product.new
  end
  
  def create
    @product = current_user.products.new(product_params)
    
    if @product.save
      redirect_to products_path,success:"商品登録に成功しました"
    else
      flash.now[:danger]=@product.errors.full_messages.join
      render :new
    end
  end
  
  def show
   　# @product = Product.find(params[:id])
  end
  
  def edit
    #@product = Product.find(params[:id])
  
  end
  
  def update
  #  @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
    redirect_to products_path,success:'編集に成功しました'
    end
  end
  
  def destroy
   # @product = Product.find(params[:id])
    if @product.destroy
    redirect_to products_path,success:'商品を削除しました'
    end
  end
  
 

    
  
  private
  def product_params
    params.require(:product).permit(:title,:image,:description,:price)
  end
  def find_post
    @product = Product.find(params[:id])
  end
  
end