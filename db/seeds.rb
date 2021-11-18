# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 577, category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 451, category: "italian" }
carajo = { name: "Chuletones", address: "Somewhere in Hell", phone_number: 651, category: "belgian"}
waffle = { name: "Waffles", address: "Somewhere in Heaven 123. Apt C", phone_number: 111, category: "belgian"}
covid = { name: "Covid19", address: "Sum Thang is Wong", phone_number: 123, category: "chinese"}

[dishoom, pizza_east, carajo, waffle, covid].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
