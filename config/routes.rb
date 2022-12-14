Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome#index'
  # root "articles#index"
  resources :restaurants, only: %i[index show destroy]
  resources :pizzas, only: [:index]
  resources :restaurant_pizza, only: [:create]
end
