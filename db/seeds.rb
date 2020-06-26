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
file = URI.open('https://images.unsplash.com/photo-1558383409-ab7ef8db3e01?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1070&q=80')
daiquiri.photo.attach(
  io: file, filename: 'daiquiri.jpeg', content_type: 'image/jpeg'
)
puts 'daiquiri created'

puts 'creating mojito'
mojito = Cocktail.create!(name: 'Mojito')
file = URI.open('https://images.unsplash.com/photo-1571390743279-4b4336be29ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
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

white_rum = Ingredient.create!(name: 'White rum')
sugar = Ingredient.create!(name: 'Sugar')
lime_wheel = Ingredient.create!(name: 'Lime wheel')
mint_leaves = Ingredient.create!(name: 'Mint leaves')
club_soda = Ingredient.create!(name: 'Club soda')
Ingredient.create!(name: 'Ice cubes')
lime_juice = Ingredient.create!(name: 'Freshly-squeezed lime juice')
tequila = Ingredient.create!(name: 'Tequila')
agave_syrup = Ingredient.create!(name: 'Agave syrup')
korsher_salt = Ingredient.create!(name: 'Kosher salt')
Ingredient.create!(name: 'Demerara sugar syrup')
mint_sprig = Ingredient.create!(name: 'Mint sprig')
simple_syrup = Ingredient.create!(name: 'Simple syrup')
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
orange_liqueur = Ingredient.create!(name: 'Orange liqueur')

puts 'ingredients created'

puts 'deleting doses'
Dose.destroy_all
puts 'database is clean'
puts 'creating doses'

Dose.create!(
  description: '1 1/2oz',
  cocktail_id: daiquiri.id,
  ingredient_id: white_rum.id
)

Dose.create!(
  description: '3/4oz',
  cocktail_id: daiquiri.id,
  ingredient_id: lime_juice.id
)

Dose.create!(
  description: '1/4oz',
  cocktail_id: daiquiri.id,
  ingredient_id: simple_syrup.id
)

Dose.create!(
  description: '1',
  cocktail_id: mojito.id,
  ingredient_id: lime_juice.id
)

Dose.create!(
  description: '1tsp',
  cocktail_id: mojito.id,
  ingredient_id: sugar.id
)

Dose.create!(
  description: '60ml',
  cocktail_id: mojito.id,
  ingredient_id: white_rum.id
)

Dose.create!(
  description: 'to taste',
  cocktail_id: mojito.id,
  ingredient_id: club_soda.id
)

Dose.create!(
  description: '3',
  cocktail_id: mojito.id,
  ingredient_id: mint_leaves.id
)

Dose.create!(
  description: 'to taste',
  cocktail_id: mojito.id,
  ingredient_id: mint_sprig.id
)

Dose.create!(
  description: '2oz',
  cocktail_id: margarita.id,
  ingredient_id: tequila.id
)

Dose.create!(
  description: '1oz',
  cocktail_id: margarita.id,
  ingredient_id: lime_juice.id
)

Dose.create!(
  description: '1oz',
  cocktail_id: margarita.id,
  ingredient_id: orange_liqueur.id
)

Dose.create!(
  description: '1/2oz',
  cocktail_id: margarita.id,
  ingredient_id: agave_syrup.id
)

Dose.create!(
  description: '1',
  cocktail_id: margarita.id,
  ingredient_id: lime_wheel.id
)

Dose.create!(
  description: 'garnish with',
  cocktail_id: margarita.id,
  ingredient_id: korsher_salt.id
)

puts 'doses created'
