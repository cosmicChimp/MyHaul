class UsersController < ApplicationController
    

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.errors.any?
            render :new
        else
            session[:user_id] = @user.id
            redirect_to :root
        end
    end


    private

    def user_params
        params.require(:user).permit(:email)
    end

end
