class ArticlesController < ApplicationController
#http_basic_authenticate_with name: "ppppp", password: "ppppp
#{}", except: [:index, :show]

 
   def index
   #byebug
   if current_user 

    @article=Article.where(user_id: current_user.id)

  else

    @articles = Article.all
  end
end
 
  def show
    @article = Article.find(params[:id])

end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    #byebug
    @article = Article.new(article_params)
    @article.user_id=current_user.id
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end

  def rakesh
    byebug
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end