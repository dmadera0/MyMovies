class UsersController < ApplicationController
    def index 
        @users = User.all 
        render json: @users, include: [:favorites, :movies]
    end

    def show  
        @user = User.find(params[:id])
        render json: @user, include: [:favorites, :movies]
    end

    def create 
        @user= User.create(
            name: params[:name],
            password: params[:password]
        )
        redirect_to "http://localhost:3001"   
        # render json: "user created"
    end

    def login 
        @user = User.find_by(
            name: params[:name],
            password: params[:password]
        )
        if @user 
            redirect_to "http://localhost:3001/user.html?user_id=#{@user.id}"
        else 
            redirect_to "http://localhost:3001"
        end
    end
end
