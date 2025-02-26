# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do |i|
  Restaurant.create!(name: Faker::FunnyName.name,
                category: Restaurant::CATEGORIES.sample,
                address: Faker::Address.full_address)
  puts "Created restaurant #{i}"
end 

puts "Finished! Created #{Restaurant.count} restaurants."
