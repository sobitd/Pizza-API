class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants, only: %i[id name address]
  end

  def show
    restaurant = Restaurant.find(params[:id])
    if restaurant
      render json: {
        id: restaurant.id,
        name: restaurant.name,
        address: restaurant.address
      }
    else
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    if restaurant
      restaurant.destroy
      head :no_content
    else
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end
end
