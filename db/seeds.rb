# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Borrando datos anteriores..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Creando películas..."
movies = [
  { title: "Inception", overview: "A mind-bending thriller about dream invasion.", poster_url: "https://image.tmdb.org/t/p/original/inception.jpg", rating: 8.8 },
  { title: "The Dark Knight", overview: "Batman faces the Joker in Gotham City.", poster_url: "https://image.tmdb.org/t/p/original/dark_knight.jpg", rating: 9.0 },
  { title: "Interstellar", overview: "A journey beyond our galaxy.", poster_url: "https://image.tmdb.org/t/p/original/interstellar.jpg", rating: 8.6 }
]

movies.each do |movie|
  Movie.create!(movie)
end

puts "Películas creadas exitosamente."
