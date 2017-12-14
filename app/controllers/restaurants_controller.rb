class RestaurantsController < ApplicationController

  def index

  end

  def show

  end

  def edit

  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @restaurant.name = params[:name]
    @restaurant.save
  end

end
