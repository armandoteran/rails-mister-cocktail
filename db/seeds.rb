# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts 'deleting cocktails'
Cocktail.destroy_all
puts 'database is clean'

puts 'creating daiquiri'
daiquiri = Cocktail.create!(name: 'Daiquiri')
file = URI.open('https://images.unsplash.com/photo-1541288892379-c987c60cd049?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
daiquiri.photo.attach(
  io: file, filename: 'daiquiri.jpeg', content_type: 'image/jpeg'
)
puts 'daiquiri created'

puts 'creating mojito'
mojito = Cocktail.create!(name: 'Mojito')
file = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80')
mojito.photo.attach(
  io: file, filename: 'mojito.jpeg', content_type: 'image/jpeg'
)
puts 'mojito created'

puts 'creating margarita'
margarita = Cocktail.create!(name: 'Margarita')
file = URI.open('https://images.unsplash.com/photo-1557765086-a73d2dc3059e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
margarita.photo.attach(
  io: file, filename: 'margarita.jpeg', content_type: 'image/jpeg'
)
puts 'margarita created'

puts 'deleting ingredients'
Ingredient.destroy_all
puts 'database is clean'
puts 'creating ingredients'

Ingredient.create!(name: 'White rum')
Ingredient.create!(name: 'Sugar')
Ingredient.create!(name: 'Lime wheel')
Ingredient.create!(name: 'Mint leaves')
Ingredient.create!(name: 'Club soda')
Ingredient.create!(name: 'Ice cubes')
Ingredient.create!(name: 'Freshly-squeezed lime juice')
Ingredient.create!(name: 'Tequila')
Ingredient.create!(name: 'Orange liqueur')
Ingredient.create!(name: 'Agave syrup')
Ingredient.create!(name: 'Kosher salt')
Ingredient.create!(name: 'Demerara sugar syrup')
Ingredient.create!(name: 'Mint sprig')
Ingredient.create!(name: 'Simple syrup')
Ingredient.create!(name: 'Water')
Ingredient.create!(name: 'Vodka')
Ingredient.create!(name: 'Wiskey')
Ingredient.create!(name: 'Tomato juice')
Ingredient.create!(name: 'Balck pepper')
Ingredient.create!(name: 'Celery stick')
Ingredient.create!(name: 'Celery salt')
Ingredient.create!(name: 'Worcestershire sauce')
Ingredient.create!(name: 'Tabasco')
Ingredient.create!(name: 'Triple sec')
Ingredient.create!(name: 'Cointreau')
Ingredient.create!(name: 'Sugar syrup')

puts 'ingredients created'
