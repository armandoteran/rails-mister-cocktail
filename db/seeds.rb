# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'deleting cocktails'
Cocktail.destroy_all
puts 'database is clean'
puts 'creating cocktails'
Cocktail.create!(
  name: 'Daiquiri'
)
puts 'cocktails created'

puts 'deleting ingredients'
Ingredient.destroy_all
puts 'database is clean'
puts 'creating ingredients'

Ingredient.create!(name: 'white rum')
Ingredient.create!(name: 'sugar')
Ingredient.create!(name: 'lime')
Ingredient.create!(name: 'mint leaves')
Ingredient.create!(name: 'club soda')
Ingredient.create!(name: 'ice cubes')

puts 'ingredients created'
