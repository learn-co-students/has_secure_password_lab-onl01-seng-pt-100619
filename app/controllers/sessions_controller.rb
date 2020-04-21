class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
        else
            render :new
        end
    end

  def destroy
    session.delete :name
  end 

end  