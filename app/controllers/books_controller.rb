class BooksController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

def index 
  if current_user
     @books= Book.where(user_id: current_user.id)
  else
    @books = Book.all
  end
  
  
 
end

  
def show
    @book = Book.find(params[:id])
  end
	def new
  end
 
 def create
  #byebug
  @book = Book.new(book_params)
  @book.user_id=current_user.id
  @book.save
  redirect_to @book
end

def destroy
  @book = Book.find(params[:id])
  @book.destroy
 
  redirect_to books_path
end
private
  def book_params
    params.require(:book).permit(:title, :location, :created_by, :category_id)
  end
end
