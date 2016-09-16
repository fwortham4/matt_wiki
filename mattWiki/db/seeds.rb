# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.fird
User.destroy_all
Category.destroy_all
Article.destroy_all
Version.destroy_all

Category.create!(name: "Aquatic Life")
Category.create!(name: "Pachyderms")
Category.create!(name: "Primates")
Category.create!(name: "Marsupials")
Category.create!(name: "Turtles")

User.create!(first_name: "Matt", last_name: "Baker", username: "Bakemeacake", email: "matt@matt.matt", password: "password")

Article.create!(category_id: Category.last.id-1)
Article.create!(category_id: Category.last.id-2)
Article.create!(category_id: Category.last.id-3)
Article.create!(category_id: Category.last.id-4)
Article.create!(category_id: Category.last.id)


Version.create!(title: "I Like Turtles", content: "They are great. They carry their homes around on their back", article_id: Article.last.id, author_id: User.last.id)

Version.create!(title: "Turtle Diets", content: "Turtles like to eat lettuce. Some tutrles eat small fish.", article_id: Article.last.id-1, author_id: User.last.id)

Version.create!(title: "Elephantastic!", content: "Elephants are amazing!", article_id: Article.last.id-2, author_id: User.last.id)

Version.create!(title: "Money Habitats", content: "Monkeys live in a variety of habitats. One is the rainforest. They seek protection from predators by climbing high into the canopy.", article_id: Article.last.id-3, author_id: User.last.id)
Version.create!(title: "Money Habitats", content: "Monkeys live in a variety of habitats. One is the rainforest. They seek protection from predators by climbing high into the canopy.", article_id: Article.last.id-4, author_id: User.last.id)

