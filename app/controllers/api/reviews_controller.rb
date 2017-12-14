module Api
  class ReviewsController < ApplicationController
    protect_from_forgery except: :create

    def index
      render json: { reviews: reviews }, status:200
    end

    def create
      restaurant = Restaurant.find_by(id: restaurant_id)
      restaurant.reviews << current_user.reviews.new(review_params)
      restaurant.save
      redirect_to "/restaurants/#{restaurant_id}"
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
