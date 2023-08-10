class LibrariesController < ApplicationController
    def index
      library = user.library.order(remaining_time: :asc)
      render json: library, include: { purchase_option: { include: [:purchaseable] } }
    end

    def create
      library_item = Library.create(user_id: params[:user_id], purchase_option: parmas[:purchase_option_id])
  
      if library_item.valid?
        render json: library_item
      else
        render json: library_item.errors
      end
    end
    
    private 
    
    def user
      user = User.find(params[:user_id])
    end
end
 