class ReadingListsController < ApplicationController
  before_action :authorized

  def new
  end

  def create
    @reading_list = ReadingList.new
    @book = Book.find(params[:book_id])
    @destination = Destination.find(params[:destination][:destination_id])
    @reading_list.book_id = @book.id
    @reading_list.destination_id = @destination.id
    @reading_list.user_id = session[:user_id]
    @reading_list.save
    redirect_to @book
  end

  def show
    @reading_lists = ReadingList.where(user_id: session[:user_id], destination_id: params[:destination_id])
    if @reading_lists.empty?
      redirect_to user_path(session[:user_id])
    else
      render :show
    end
  end

  def destroy
    @reading_list = ReadingList.find(params[:reading_list_id])
    @reading_list.destroy
    redirect_to request.referer
  end

end
