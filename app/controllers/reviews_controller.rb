class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @book = Book.find(params[:book_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = session[:user_id]
    @review.save
    redirect_to @review
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:book_id, :destination_id, :title, :review_body)
  end

end
