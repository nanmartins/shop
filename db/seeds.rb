# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  puts "creating..."
    @testAlbum = Album.create!({ title: "testTitle", artist: "testArtist", year: 1313, genre: "testGenre", desc: "testDescription", image_url: "testImage_url", price: 9.99 })

  puts "finish"
  puts @testAlbum
