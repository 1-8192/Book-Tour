class BooksController < ApplicationController

  def index
    @books = Book.search_by_title(params[:search])

  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
    @reviews = Review.where(book_id: @book.id)
  end




  def book_params
    params.require(:book).permit(:title, :author, :description, :publication_date, :genre, :search)
  end

end
