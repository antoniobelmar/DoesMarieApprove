class RestaurantsController < ApplicationController
  protect_from_forgery except: :create

  def index

  end

  def new

  end

  def create
    current_user.restaurants.create(name: params[:name], description: params[:description], image: params[:imageurl], location: params[:location])
    render 'index'
  end

  def show
    restaurant = Restaurant.find(params[:id])
    @restaurant_owner = User.find(restaurant.user_id)
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
    reviews.destroy if reviews
    restaurant.destroy
    redirect_to :restaurants
  end

end
