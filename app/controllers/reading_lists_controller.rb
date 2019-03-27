class ReadingListsController < ApplicationController

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
  end

end
