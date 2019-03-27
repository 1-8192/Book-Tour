class UsersController < ApplicationController

  def home
    render :layout => false
  end

  def new
    render :layout => false
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(user_id: @user.id)
    @reading_lists = ReadingList.where(user_id: @user.id)
    array = []
    @reading_lists.each do |rl|
      array << rl.destination
    end
    @dest_array = array.uniq
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
