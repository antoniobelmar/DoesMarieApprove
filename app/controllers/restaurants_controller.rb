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

  def destroy
    restaurant = Restaurant.find(params[:id])
    reviews = Review.find_by(restaurant_id: params[:id])
    reviews.destroy
    restaurant.destroy
    redirect_to :restaurants
  end

end
