class MoviesController < ApplicationController
    def index 
        @movies = Movie.all 
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

