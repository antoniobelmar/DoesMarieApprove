class RestaurantsController < ApplicationController
  protect_from_forgery except: :create

  def index

  end

  def new

  end

  def create
    # restaurant = Restaurant.new(name: params[:name], description: params[:description], image: params[:image], location: params[:location])
    current_user.restaurants.create(name: params[:name], description: params[:description], image: params[:imageurl], location: params[:location])
    # current_user.save!
    render 'index'
  end

  def show

  end


end
