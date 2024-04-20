class BooksController < ApplicationController
 def index
  @book = Book.new
  @books = Book.all
 end
 def show
    @book = Book.find(params[:id])
 end
 def new
    @book = Book.new
 end
 def content
 end
 def create
  @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "successfully"
      redirect_to book_path(@book)
    else
      flash.now[:alert] = "Error.Please check"
      @books = Book.all
      render :'books/index'
    end
 end
 
 def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to books_path, notice: "Book was successfully destroyed."
 end
 
 def edit
   @book = Book.find(params[:id])
 end
 def update
   @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "successfully"
      redirect_to book_path(@book)
    else
      flash.now[:alert] = "error"
      render :edit 
    end
  
 end
 
 private
 
 def book_params
    params.require(:book).permit(:title, :body)
 end
end