# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

10.times do
  movie = Movie.new(
    overview: Faker::Movie.quote,
    title: Faker::Movie.title,
    poster_url: Faker::LoremFlickr.image(size: "50x60"),
    rating: Faker::Number.within(range: 1..10)
  )
  movie.save!
end
puts 'Finished!'
