# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(name: "Aquatic Life")
Category.create!(name: "Pachyderms")
Category.create!(name: "Primates")
Category.create!(name: "Marsupials")
Category.create!(name: "Turtles")

Article.create!(title: "I Like Turtles", content: "They are great. They carry their homes around on their back", category_id: 1, author_id: 1)

Article.create!(title: "Turtle Diets", content: "Turtles like to eat lettuce. Some tutrles eat small fish.", category_id: 1, author_id: 1)

Article.create!(title: "Elephantastic!", content: "Elephants are amazing!", category_id: 4, author_id: 1)

Article.create!(title: "Money Habitats", content: "Monkeys live in a variety of habitats. One is the rainforest. They seek protection from predators by climbing high into the canopy.", category_id: 3, author_id: 1)
