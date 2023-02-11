class PinsController < ApplicationController
    
    def index
        pins = Pin.all
        render json: pins, status: :ok
    end

    def create
        pin = Pin.create!(params)
        render json: pin, status: :created
    end

    private

    def fav_params
        params.permit(:username, :title, :desc)
    end
end
