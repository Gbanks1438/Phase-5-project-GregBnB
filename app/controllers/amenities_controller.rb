class AmenitiesController < ApplicationController
    def index
        render json: Amenity.all
    end

    def show
        amenity = Amenity.find_by_id(params[:id])
        if amenity
            render json: amenity
        else
            render json: {"error": "amenity not found"}, status: :not_found
        end
    end
end
