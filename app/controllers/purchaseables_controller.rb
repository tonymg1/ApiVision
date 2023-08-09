class PurchaseablesController < ApplicationController
    def index
      seasons = Season.all 
      movies = Movie.all

      render json: {
        seasons: seasons,
        movies: movies
      }
    end
  
end
  
