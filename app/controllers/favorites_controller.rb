class FavoritesController < ApplicationController
    def index 
        @favorites = Favorite.all 
        render json: @favorites, include: [:movies]
    end

    def show  
        @favorite = Favorite.find(params[:id])
        render json: @favorite, include: [:movies]
    end
    
    def create 
        @favorite = Favorite.create(
            user_id: params[:user_id],
            movie_id: params[:movie_id])
        redirect_to "http://localhost:3001/user.html?user_id=#{@favorite.user_id}"
        # render json: "favorite_created"
    end
end
