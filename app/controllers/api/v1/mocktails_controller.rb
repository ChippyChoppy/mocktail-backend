class Api::V1::MocktailsController < ApplicationController
    
    def show
        mocktail = Mocktail.find(params[:id])
        render json: mocktail
    end

end