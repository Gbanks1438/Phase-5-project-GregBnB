class RoomsController < ApplicationController
    def index
        render json: Room.all
    end

    def show
        room = Room.find_by_id(params[:id])
        if room
            render json: room
        else
            render json: {"error": "room not found"}, status: :not_found
        end
    end
end
