class Api::V1::UsersController < ApplicationController
    def index
        user = User.all
        render json: user
    end

    def new
        user = User.new
        render json: user
    end

    def create
        user = User.create(user_params)
    end

    private
    def user_params
        params.require(:user).permit(:name)
    end
end