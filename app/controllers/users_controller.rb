class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    
    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to @user
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def home
    end
    
    def edit_mail
        @user = User.find(params[:id])
    end
    
    private

    def user_params
        params.require(:user).permit(:email)
    end
end
