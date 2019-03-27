class ReadingListsController < ApplicationController


  def new

  end

  def create
    @reading_list = ReadingList.new
    @book = Book.find(params[:book_id])
    @destination = Destination.find(params[:destination_id])
    @user = session[:user_id]
    @reading_list.book_id = @book.id
    @reading_list.destination_id = @destination.id
    @reading_list.user_id = @user.id
    @reading_list.save
    redirect_to @book 
  end






end
