class Api::V1::FavoritesController < ApplicationController

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def index
        favorite = Favorite.all
        render json: favorite
    end
    
    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end

    private
    def favorite_params
        params.require(:favorite).permit(:user_id, :mocktail_id)
    end

end