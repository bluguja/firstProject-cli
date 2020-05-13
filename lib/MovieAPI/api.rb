class MovieAPI::API 
    def fetch 
      key = env"c4VwXIKKJFFjf4s04JtZM0U7bC0r37tf"
      url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=godfather&api-key=#{key}" 
      
      response = HTTParty.get(url) 
     # binding.pry 
     # @ 32.31 minutes
     name = movie["display_title"]
     rating = movie["mppa_rating"] 
     link = movie["link"] ["url"]
     # new instance of a Movie created
     MovieAPI::Movie.new(name, rating,link)
      
    end 
    
  end 
  
