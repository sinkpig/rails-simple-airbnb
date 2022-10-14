# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'started'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Big 5 dorms apartment',
  address: '123 somewhere over the rainbow Av',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit. Tellus elementum sagittis vitae et leo duis.',
  price_per_night: 100,
  number_of_guests: 5
)
Flat.create!(
  name: 'Castle built for royalty',
  address: '123 Sesame street',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At volutpat diam ut venenatis tellus in metus. Arcu bibendum at varius vel pharetra vel.',
  price_per_night: 1000,
  number_of_guests: 20
)
Flat.create!(
  name: 'Small minimalist apartment',
  address: 'Rio de Janeiro road',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing enim eu turpis egestas pretium.',
  price_per_night: 50,
  number_of_guests: 2
)
puts 'Finished'
