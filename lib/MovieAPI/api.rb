
# This API class is responsible for getting processing info from the API web info)
class API
  
    def self.
    end

  
    def fetch_web_info
      
      key = ENV["MY_API_KEY"]
      url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=godfather&api-key=#{key}"
      
      response = HTTParty.get(url) 
     
     # @ 32.31 minutes
     
     name = Movies["display_title"]
     
     rating = Movies["mppa_rating"] 
     
     link = Movies["link"] ["url"]
     
     ## new instance of a Movie created
        MovieAPI::Movie.new(name, rating, link)
      binding.pry
    end 
    
  end 
  
