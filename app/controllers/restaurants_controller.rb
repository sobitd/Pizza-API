class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  def index
    restaurants = Restaurant.all
    render json: restaurants, status: :ok
  end

  def show
    restaurant = Restaurant.find_by!(id: params[:id])
    render json: restaurant, serializer: RestaurantPizzaSerializer, status: :ok
  end

  def destroy
    restaurant = Restaurant.find_by!(id: params[:id])
    render json: {}, status: :no_content
  end

  private

  def not_found
    render json: { error: 'Restaurant not found' }
  end
end
