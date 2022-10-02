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

