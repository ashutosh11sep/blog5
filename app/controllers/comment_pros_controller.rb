class CommentProsController < ApplicationController

def create
    @product = Product.find(params[:product_id])
    @comment_pro = @product.comment_pros.create(comment_pro_params)
    redirect_to product_path(@product)
  end


  def destroy
    @product = Product.find(params[:product_id])
    @comment_pro = @product.comment_pros.find(params[:id])
    @comment_pro.destroy
    redirect_to product_path(@product)
  end
 
  private
    def comment_pro_params
      params.require(:comment_pro).permit(:commenter, :body)
    end

end
