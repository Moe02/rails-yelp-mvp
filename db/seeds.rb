# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db..."
Restaurant.destroy_all
puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::TvShows::RickAndMorty.location,
    category: Restaurant::CATEGORY.sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
puts "Created #{Restaurant.count} restaurants..."

puts "Cleaning the db..."
Review.destroy_all
puts "Creating reviews..."
5.times do
  Review.create!(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant: Restaurant.all.sample
    )
end
puts "Created #{Review.count} reviews..."






