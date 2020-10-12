 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5, chef_name: 'Adriana Mathias' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4, chef_name: 'Julia Mathias' }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

100.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address:Faker::Address.street_address,
    stars: rand(1..5),
    chef_name: ['Gordon Ramsey', 'Gido', 'Alain Ducasse', 'Jamie Oliver'].sample
    )
end
