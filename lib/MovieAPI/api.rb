
# This API class is responsible for getting processing info from the API web info)
class API
  
    
    def self.fetch_web_info
      
      key = ENV["MY_API_KEY"]
      
     
      url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=godfather&api-key=#{key}"
      
      response = HTTParty.get(URI(url))
      
      response = ["results"].each do |movie|
        name = movie["display_title"]
        rating = movie["mpaa_rating"]
        link = ["link"]["url"]
        
        Movie.new(name,rating,link)
        
      binding.pry
    end 
  end
  end 
  
