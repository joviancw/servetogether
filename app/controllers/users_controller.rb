class UsersController < ApplicationController
    def new
    end

    def create
        @user = User.new(post_params)
        #params[]
        @user.save
        redirect_to @user
    end

    def show
        @user = User.find(params[:id])
    end

    private
     def post_params
        params.require(:user).permit(:name, :email)
     end
end
