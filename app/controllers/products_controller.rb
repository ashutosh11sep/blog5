class ProductsController < ApplicationController
	
def index

  if current_user
     @products= Product.where(user_id: current_user.id)
	
else
  @products=Product.all
end	
end
def show
      @comment = Comment.new
	    @product = Product.find(params[:id])
end
def new
	 @product = Product.new
	end

	def edit
  @product = Product.find(params[:id])
end
def create
  @product = Product.new(product_params)
 @product.user_id=current_user.id
 if @product.save
  redirect_to @product

  else
    render 'new'
end
end

def update
  @product = Product.find(params[:id])
 
  if @product.update(product_params)
    redirect_to @product
  else
    render 'edit'
  end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
 
  redirect_to products_path
end

private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

	end

