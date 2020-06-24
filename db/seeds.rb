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
Ingredient.create!(name: 'Mint spig')
Ingredient.create!(name: 'Simple syrup')

puts 'ingredients created'
