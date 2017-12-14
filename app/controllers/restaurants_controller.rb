class RestaurantsController < ApplicationController

  def index

  end

  def show

  end

  def edit

  end

  def update
    @restaurant = Restaurant.find(params[:id])
    update_database
  end
  
  private

  def update_database
    @restaurant.name = params[:name] if params[:name] != ''
    @restaurant.location = params[:location] if params[:location] != ''
    @restaurant.description = params[:description] if params[:description] != ''
    @restaurant.image = params[:image] if params[:image] != ''
    @restaurant.save
  end

end
