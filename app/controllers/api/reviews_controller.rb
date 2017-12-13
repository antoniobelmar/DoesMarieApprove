module Api
  class ReviewsController < ApplicationController

    def index
      render json: { reviews: reviews }, status:200
    end

    def create
      restaurant = Restaurant.find_by(id: restaurant_id)
      restaurant.reviews.create(review_params)
    end

    private

    def reviews
      Review.where(restaurant_id: restaurant_id)
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end

    def restaurant_id
      params.require(:restaurant_id)
    end

  end
end
