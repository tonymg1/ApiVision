class LibrariesController < ApplicationController
    def show
      user = User.find(params[:user_id])
      library = user.library
      render json: library.contents.alive.order(expires_at: :asc)
    end
end
  