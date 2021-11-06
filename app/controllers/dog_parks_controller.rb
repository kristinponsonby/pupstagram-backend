class DogParksController < ApplicationController

    def index
        dog_parks = DogPark.all
        render json: dog_parks
    end

    # def show 
    #     dog_park = DogPark.find(params[:id])
    #     render json: 
    # end 

end
