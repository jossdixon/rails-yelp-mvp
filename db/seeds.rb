# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'HAL is obliterating all restaurants...'
Restaurant.destroy_all
puts 'HAL is fabricating new restaurants...'
5.times do
  Restaurant.create!(
    name: Faker::Games::Zelda.location,
    address: Faker::Games::StreetFighter.stage,
    category: Restaurant::CATEGORY.sample,
  )
end
puts 'HAL creation executed. Your new restaurants are ready, sir.'
