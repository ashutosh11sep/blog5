class CommentsController < ApplicationController
  
  def create
    #byebug
  if params[:article_id].present?
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.user_id =current_user.id
    @comment.save    
    redirect_to article_path(@article)

    elsif params[:product_id].present?
    @article = Product.find(params[:product_id])
   @comment = @article.comments.new(comment_params)
    @comment.user_id =current_user.id
    @comment.save
     redirect_to product_path(@article)


   elsif params[:book_id].present?
    @article = Book.find(params[:book_id])
   @comment = @article.comments.new(comment_params)
    @comment.user_id =current_user.id
    @comment.save
     redirect_to book_path(@article)
  
else
    @article = Blog.find(params[:blog_id])
    @comment = @article.comments.new(comment_params)
    @comment.user_id =current_user.id
    @comment.save
    redirect_to blog_path(@article)

  end
  end
 
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:title, :comment)
    end
end
