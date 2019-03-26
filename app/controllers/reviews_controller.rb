class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @book = Book.find(params[:review][:book_id])
  end

  def create

  end

  def show

  end




end
