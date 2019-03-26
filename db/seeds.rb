require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Destination.destroy_all

6.times do
  Destination.create(name: Faker::Address.city, country: Faker::Address.country, continent: "TBD", description: Faker::Lorem.paragraph)
end

12.times do
  Book.create(title: Faker::Book.title, author: Faker::Book.author, description: Faker::Lorem.paragraph, publication_date: rand(1700..2019), genre: Faker::Book.genre)
end
