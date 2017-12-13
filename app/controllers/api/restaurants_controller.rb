module Api
  class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

    def index
      restaurants = Restaurant.all
      render :json => { restaurants: restaurants }
    end

    def show
      render :json => { restaurant: restaurant }
    end

    def create
      new_restaurant = Restaurant.new(restaurant_params)
      new_restaurant.save
    end

    private

    def restaurant_params
      params.require(:restaurant).permit(:name,:description,:image,:location)
    end

    def restaurant
      @restaurant ||=Restaurant.find_by!(id: id)
    end

    def id
      params.require(:id)
    end

    def record_not_found
      render json: { errors: ["Couldn't find Restaurant {id: #{id}}"] }, status: 500
    end

  end

end
