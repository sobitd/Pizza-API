# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)

Pizza.create(name: 'Cheese', ingredients: 'mozzarella,garlic,oregano')
Pizza.create(name: 'Veggie', ingredients: 'peppers,mushrooms,eggplant,onions')
Pizza.create(name: 'Pepperoni', ingredients: 'mozzarella,pepperoni')
Pizza.create(name: 'Hawaiian', ingredients: 'mozzarella,ham,pineapple')
Pizza.create(name: 'Margherita', ingredients: 'mozzarella,basil,olive-oil,salt')

monday_special = RestaurantPizza.create(price: 2, pizza_id: 2, restaurant_id: 1)
tuesday_special = RestaurantPizza.create(price: 3,pizza_id: 1, restaurant_id: 2)
wednesday_special = RestaurantPizza.create(price: 5,pizza_id: 3, restaurant_id: 3)
thursday_special = RestaurantPizza.create(price: 6,pizza_id: 4, restaurant_id: 4)
friday_special = RestaurantPizza.create(price:10,pizza_id: 5,restaurant_id:5)
saturday_special = RestaurantPizza.create(price: 3, pizza_id: 3, restaurant_id: 6)
    
    