class BooksController < ApplicationController

  def index
    @books = Book.search_by_title(params[:search])
    if @books == Book.all
      @books = Book.search_by_author(params[:search])
    end
    if @books == Book.all
      @books = Book.search_by_genre(params[:search])
    end
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
