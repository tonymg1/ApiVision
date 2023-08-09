class PurchaseOptionsController < ApplicationController
    def index
      purchase_options = PurchaseOption.all
      render json: purchase_options
    end

  end
  