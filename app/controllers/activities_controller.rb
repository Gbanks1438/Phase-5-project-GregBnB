class ActivitiesController < ApplicationController
    def index
        render json: Activity.all
    end

    def show
        activity = Activity.find_by_id(params[:id])
        if activity
            render json: activity
        else
            render json: {"error": "activity not found"}, status: :not_found
        end
    end
end
