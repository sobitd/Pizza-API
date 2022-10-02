class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all.order(rating: :desc)
    render json: restaurants, include:
    [pizzas: { only: %i[id name ingredients] }]
  end

  def show
    restaurant = Restaurant.find(params[:id])
    if restaurant
      render json: restaurant
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
