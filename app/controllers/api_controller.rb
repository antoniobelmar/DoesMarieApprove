class ApiController < ApplicationController
  def restaurants
    render :json => Restaurant.all
  end

  def restaurantsid
    @restaurant = Restaurant.find(params[:id])
    render :json => @restaurant
  end

  def restaurant_reviews
    @reviews = Restaurant.find(params[:id]).reviews
    render :json => @reviews
  end

end
