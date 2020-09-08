# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


daniel = User.create(name: "daniel")
sanjeev = User.create(name:"sanjeev")

titanic = Movie.create(title: "titanic",year: "1997", genre: "drama", plot:"ship sinks")
toy_story = Movie.create(title: "toy Story", year: "1997", genre: "animation", plot: "toys come alive")

Favorite.create(user: daniel, movie: toy_story)
Favorite.create(user: sanjeev, movie: titanic)