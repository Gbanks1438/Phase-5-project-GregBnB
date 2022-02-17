class RoomAmenitiesController < ApplicationController
    def index
        render json: RoomAmenity.all
    end

    def show
        room_amenities = RoomAmenity.find_by_id(params[:id])
        if room_amenities
            render json: room_amenities
        else
            render json: {"error": "room_amenities not found"}, status: :not_found
        end
    end
end
