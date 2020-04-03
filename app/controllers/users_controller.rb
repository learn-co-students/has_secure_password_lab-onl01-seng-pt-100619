class UsersController < ApplicationController



    def create

        @user = User.create(user_params)

        if user_params[:password] != user_params[:password_confirmation]
            redirect_to new_user_path
        end

        if @user
            session[:user_id] = @user.id            
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end