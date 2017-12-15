module Api
  class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

    def index
      render :json => { restaurants: restaurants_array}
    end

    def show
      render :json => { restaurant: restaurant}
    end

    private

    def restaurant
      restaurant ||= Restaurant.find_by!(id: id)
      { id: restaurant.id, name: restaurant.name, location: restaurant.location, description: restaurant.description, image: restaurant.image, average_rating: average_rating(restaurant) }
    end

    def id
      params.require(:id)
    end

    def record_not_found
      render json: { errors: ["Couldn't find Restaurant {id: #{id}}"] }, status: 500
    end

    def restaurants_array
      array = []
      Restaurant.all.each do |restaurant|
        array << { id: restaurant.id, name: restaurant.name, location: restaurant.location, description: restaurant.description, image: restaurant.image, average_rating: average_rating(restaurant) }
      end
      array
    end

    def average_rating(restaurant)
      return (restaurant.reviews.map(&:rating).sum.to_f / restaurant.reviews.map(&:rating).length.to_f).round(1) unless restaurant.reviews.map(&:rating).length == 0
      "No Reviews"
    end

  end

end
