


Favorite.destroy_all
Movie.destroy_all
User.destroy_all

require 'pry'



(1..50).to_a.each do |page|
    # binding.pry
    url = "https://api.themoviedb.org/3/movie/top_rated?api_key=eccae21236f50571310ed5eb92155abe&language=en-US&page=#{page.to_s}"
    response = RestClient.get(url)
    parsed_response = JSON.parse(response)
    
    parsed_response["results"].each do |movie|
        # binding.pry
        Movie.create(
            title: movie["title"], 
            year: movie["release_date"], 
            plot: movie["overview"], 
            rating: movie["vote_average"], 
            image: movie["poster_path"], 
            vote_count: movie["vote_count"]
        )
    end
    
end 
