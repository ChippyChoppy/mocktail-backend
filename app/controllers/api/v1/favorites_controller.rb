class Api::V1::FavoritesController < ApplicationController

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

end