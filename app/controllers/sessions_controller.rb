class SessionsController < ApplicationController
skip_before_action :verify_authenticity_token, only: :destroy

  def new
    render :layout => false
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
    # byebug
  end


end
