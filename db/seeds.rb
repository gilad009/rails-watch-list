# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all
puts "clearing database"

10.times do
  movies = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentences,
    poster_url: Faker::LoremFlickr.image,
    rating: Faker::Number.between(from: 1, to: 10)
  )
  movies.save!
end

