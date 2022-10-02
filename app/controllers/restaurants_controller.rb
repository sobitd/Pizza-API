class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants, only: [:id, :name, :address]
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: {
      id: restaurant.id,
      name: restaurant.name,
      address: restaurant.address
    }
  end
end
