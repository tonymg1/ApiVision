class PurchaseOptionsController < ApplicationController
    def show
      purchase_option = PurchaseOption.find(params[:id])
      render json: purchase_option
    end
  
    def create
      user = User.find(params[:user_id])
      purchase_option = PurchaseOption.find(params[:purchase_option_id])
  
      library_item = Library.create(user: user, purchasable: purchase_option)
  
      if library_item.valid?
        render json: library_item, status: :created
      else
        render json: library_item.errors, status: :unprocessable_entity
      end
    end
  end
  