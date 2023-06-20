class AdminsController < ApplicationController
    before_action :authenticate_admin!

    def index
        @admins = Admin.all
    end

    def show
        @admin = Admin.find(params[:id])
    end

    def home
    end

    def manage_users
        @users = User.all
    end

    private
    def admin_params
        params.require(:admin).permit(:id)
    end
end
