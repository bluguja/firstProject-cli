
# This API class is responsible for getting processing info from the API web info)
class API
  
    
    def self.fetch_web_info
      
      key = ENV["MY_API_KEY"]
      binding.pry
     
      url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=godfather&api-key=#{key}"
      
      response = HTTParty.get(url) 
     binding.pry
     # @ 32.31 minutes
     
    # name = Movies["display_title"]
     
    # rating = Movies["mppa_rating"] 
     
    # link = Movies["link"] ["url"]
     
     
      
    end 
    
  end 
  
