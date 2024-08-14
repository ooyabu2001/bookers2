class BooksController < ApplicationController

  def new
    @book =Book.new
  end

  def index
    @books = Book.all


  def show
  @book = Book.find(params[:id])
  end

  end

  private
  def book_params
    params.require(:book).permit(:name,:introduction,:image)
  end
end
