class RestaurantsController < ApplicationController

  def index

  end

  def new

  end

  def create
    Restaurant.create(name: params[:name], description: params[:description], image: params[:image], location: params[:location])
    redirect_to "/restaurants/#{Restaurant.last.id}"
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
