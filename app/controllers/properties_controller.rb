class PropertiesController < ApplicationController
    def index
        render json: Property.all
    end

    def show
        property = Property.find_by_id(params[:id])
        if property
            render json: property
        else
            render json: {"error": "property not found"}, status: :not_found
        end
    end
end
