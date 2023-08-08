class SeasonsController < ApplicationController
    def index
      seasons = Season.all
      render json: seasons
    end
  
    def show
      season = Season.find(params[:id])
      render json: season
    end
  end
  