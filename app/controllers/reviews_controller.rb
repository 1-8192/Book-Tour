class ReviewsController < ApplicationController


  def new
    @review = Review.new
    @book = Book.find(params[:book_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = session[:user_id]
    if @review.valid?
      @review.save
      redirect_to @review
    else
      @book = Book.find(params[:review][:book_id])
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.title = params[:review][:title]
    @review.review_body = params[:review][:review_body]
    @review.save
    redirect_to @review
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to "/users/#{session[:user_id]}"
  end

  private

  def review_params
    params.require(:review).permit(:book_id, :destination_id, :title, :review_body)
  end

end
