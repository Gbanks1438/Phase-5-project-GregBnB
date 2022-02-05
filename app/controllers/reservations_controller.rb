class ReservationsController < ApplicationController
    def index
        render json: Reservation.all
    end

    def show
        reservation = Reservation.find_by_id(params[:id])
        if reservation
            render json: reservation
        else
            render json: {"error": "reservation not found"}, status: :not_found
        end
    end

    def update
        reservation = Reservation.find_by_id(params[:id])
        if reservation
            reservation.update(reservation_params)
          render json: reservation
        else
          render json: { "error": "Reservation not found" }, status: :not_found
        end
    end

    def destroy
        reservation = Reservation.find_by_id(params[:id])
            reservation.destroy
            head :no_content
    end

    private
      
      def reservation_params
        params.permit(:num_guests, :start_date, :end_date, :user_id, :property_id)
      end
end
