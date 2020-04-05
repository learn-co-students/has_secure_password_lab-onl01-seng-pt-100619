class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.find_by(name: user_params[:name])
    return head(:forbidden) unless @user.authenticate(user_params[:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end
end
