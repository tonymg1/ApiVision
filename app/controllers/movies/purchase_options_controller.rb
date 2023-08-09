module Movies
    class PurchaseOptionsController < ApplicationController
      def show
        @movie = Movie.find(params[:movie_id])
        @purchase_options = @movie.purchase_options
        render json: @purchase_options
      end
    end
end
