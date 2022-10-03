class RestaurantPizzaController < ApplicationController
  def create
    weekday_special = RestaurantPizza.create(params.permit(:price, :pizza_id, :restaurant_id))
    render json: weekday_special, status: :created
  end
end
