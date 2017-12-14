class RestaurantsController < ApplicationController

  def index

  end

  def show

  end

  def edit

  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update_restaurant(params[:name], params[:location], params[:description], params[:image]  )
    restaurant.save
    redirect_to :restaurants
  end

  def delete

  end

end
