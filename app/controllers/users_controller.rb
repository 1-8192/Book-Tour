class UsersController < ApplicationController
  before_action :authorized, except: [:home, :new, :create]

  def home
    # render :layout => false
  end

  def new
    @user = User.new
    render :layout => false
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(user_id: @user.id)
    @destination_array = @user.get_reading_lists
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
