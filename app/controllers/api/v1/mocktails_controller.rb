class Api::V1::MocktailsController < ApplicationController
    
    def index
        mocktail = Mocktail.all 
        render json: mocktail
    end

    def show
        mocktail = Mocktail.find(params[:id])
        render json: mocktail
    end

    def update
        mocktail = Mocktail.find(params[:id])
        mocktail.update(mocktail_params)
        render json: mocktail
    end

    private

    def mocktail_params
        params.require(:mocktail).permit(:name, :imageUrl, :tasting_notes, :glassware, :instruction, :tag, :like, :dislike)
    end
end