class MoviesController < ApplicationController
    def index 
        if params[:search]
            @movies = Movie.where('title LIKE ?', "%#{params[:search]}%")
          else 
            @movies = Movie.all
        end
        render json: @movies
    end

    def show  
        @movie = Movie.find(params[:id])
        render json: @movie
    end

    def create 
        @movie = Movie.create(
            title: params[:title], 
            year: params[:year],
            genre: params[:genre],
            plot: params[:plot]
            )
        render json: "movie created"
    end
end

