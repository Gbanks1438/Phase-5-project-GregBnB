class ReviewsController < ApplicationController
    def index
        render json: Review.all
    end

    def show
        review = Review.find_by_id(params[:id])
        if review
            render json: review
        else
            render json: {"error": "review not found"}, status: :not_found
        end
    end

    def create
      new_review = Review.new(review_params)
      if new_review.save
          session[:user_id] = new_review.id
          render json: new_review, status: :created
      else
          render json: {errors: new_review.errors.full_messages}, status: :unprocessable_entity
      end
    end

    private
      
      def review_params
        params.permit(:review, :user_id, :property_id)
      end
end
