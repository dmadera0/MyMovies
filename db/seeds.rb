# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# daniel = User.create(name: "daniel")
# sanjeev = User.create(name:"sanjeev")

# titanic = Movie.create(title: "titanic",year: "1997", genre: "drama", plot:"ship sinks")
# toy_story = Movie.create(title: "toy Story", year: "1997", genre: "animation", plot: "toys come alive")

# Favorite.create(user: daniel, movie: toy_story)
# Favorite.create(user: sanjeev, movie: titanic)

10.times do
response = RestClient.get("https://api.themoviedb.org/3/movie/top_rated?api_key=eccae21236f50571310ed5eb92155abe&language=en-US")
parsed_response = JSON.parse(response)

parsed_response["results"].map do |movie|
    Movie.create(title: movie["title"], year: movie["release_date"], plot: movie["overview"], rating: movie["vote_average"], image: movie["poster_path"], vote_count: movie["vote_count"])
end
end 