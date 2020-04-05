class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.alert = "Passwords must match."
      redirect_to signup_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
