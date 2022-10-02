class PizzasController < ApplicationController
  def index
    pizzas = Pizza.all
    render json: pizzas, only: %i[id name ingredients]
  end
end
