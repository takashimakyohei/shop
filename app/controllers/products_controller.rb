class ProductsController < ApplicationController
  def home
    
  end
  
  def index
    @products =Product.all
  end
  
  def new
    @product =Product.new
  end
  
  def create
    @product = current_user.products.new(product_params)
  if @product.save
    redirect_to products_path,success:"商品登録に成功しました"
  else
    flash.now[:danger]="商品登録に失敗しました"
    render :new
  end
  
  def show
    @product = Product.find(params[:id])
  end
    
  end
  
  private
  def product_params
    params.require(:product).permit(:title,:image,:description,:price)
  end
  
end
