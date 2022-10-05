class RestaurantPizzaController < ApplicationController
  def create
    newrestpizz = RestaurantPizza.create(price: params[:price], pizza_id: params[:pizza_id],
                                         restaurant_id: params[:restaurant_id])
    render json: newrestpizz, status: :created
  end
end
