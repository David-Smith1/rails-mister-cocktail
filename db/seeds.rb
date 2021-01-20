# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
file = HTTParty.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
ingredients_thing = JSON.parse(file.body)
# ingredients_thing["drinks"].sample["strIngredient1"]




puts "cleaning database"
Cocktail.destroy_all
puts "creating cocktails...."

Cocktail.create!(
    name: "Mojito"
)
Cocktail.create!(
    name: "Gin & Tonic"
)
Cocktail.create!(
    name: "Whiskey Sour"
)
Cocktail.create!(
    name: "Margarita"
)
Cocktail.create!(
    name: "Long Island Iced Tea"
)
Cocktail.create!(
    name: "Bloody Mary"
)
Cocktail.create!(
    name: "Dirty Shirley"
)
Cocktail.create!(
    name: "Moscow Mule"
)
Cocktail.create!(
    name: "White Russian"
)
Cocktail.create!(
    name: "Cosmopolitan"
)
Cocktail.create!(
    name: "Screwdriver"
)
Cocktail.create!(
    name: "Daiquiri"
)


puts "Seeded!"
puts "cocktails created!!"

puts "cleaning database"
Ingredient.destroy_all

puts "creating Ingredients...."
99.times do
  Ingredient.create(name: ingredients_thing["drinks"].sample["strIngredient1"])
end
puts "Ingredients created!!"
puts "cleaning database"



