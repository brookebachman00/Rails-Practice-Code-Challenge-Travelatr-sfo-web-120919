class DestinationsController < ApplicationController
    def new
        @destination = Destination.new
    end

    def create
        @destination = Blogger.create(destination_params)
        @destination.save
        redirect_to destinations_path(@destination)
    end

    def index
        @destinations = Destination.all
    end

    def show
        @destination = Destination.find(params[:id])
    end

    private

    def destination_params
        params.require(:destination).permit(:name,:bio,:age)
    end
end