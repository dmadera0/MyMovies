class FavoritesController < ApplicationController
    def index 
        @favorites = Favorite.all 
        render json: @favorites
    end

    def show  
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end
    
    def create 
        @favorite = Favorite.create(
            user_id: params[:user_id],
            movie_id: params[:movie_id])
        render json: "favorites created"
    end
end
