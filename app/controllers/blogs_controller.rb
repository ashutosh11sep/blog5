class BlogsController < ApplicationController

def new
	@blog = Blog.new
end

def edit
  @blog = Blog.find(params[:id])
end

def create
  @blog = Blog.new(blog_params)
  @blog.user_id=current_user.id
 
  if @blog.save
  redirect_to @blog
  else
    render 'new'
  end
end

def index

  if current_user
     @blogs= Blog.where(user_id: current_user.id)

   else
    @blogs = Blog.all
  end
end
def show
	@blog = Blog.find(params[:id])
	end

def update
  @blog = Blog.find(params[:id])
 
  if @blog.update(blog_params)
    redirect_to @blog
  else
    render 'edit'
  end
end

def destroy
  @blog = Blog.find(params[:id])
  @blog.destroy
 
  redirect_to blogs_path
end
 
private
  def blog_params
    params.require(:blog).permit(:title, :location, :description, :category_id)
  end
  end



