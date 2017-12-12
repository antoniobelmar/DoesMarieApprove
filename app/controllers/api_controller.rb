class ApiController < ApplicationController
  def restaurants
    render :json => Restaurant.all
  end

  def restaurantsid
    @restaurant = Restaurant.find(params[:id]);
    render :json => @restaurant
  end
end
