# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

list_movies = URI.open('http://tmdb.lewagon.com/movie/top_rated').read
movies = JSON.parse(list_movies)
movies["results"].each do |movie|
  if movie["original_language"] == 'en'
    new_movie = Movie.new
    new_movie["title"] = movie["original_title"]
    new_movie["overview"] = movie["overview"]
    new_movie["poster_url"] = "https://image.tmdb.org/t/p/w500/#{movie["poster_path"]}"
    new_movie["rating"] = movie["vote_average"]
    new_movie.save
  end
end

puts 'Seed finalizado'

# 10.times do
#   movie = Movie.new(
#     overview: Faker::Movie.quote,
#     title: Faker::Movie.title,
#     poster_url: Faker::LoremFlickr.image(size: "50x60"),
#     rating: Faker::Number.within(range: 1..10)
#   )
#   movie.save!
# end
# puts 'Finished!'
