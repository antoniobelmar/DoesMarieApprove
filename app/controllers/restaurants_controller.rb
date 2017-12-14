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

  end


end
