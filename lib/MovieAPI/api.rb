
# This API class is responsible for getting processing info from the API web info)
class API
  
    
    def self.fetch_web_info(web_info)
      
      key = ENV["MY_API_KEY"]
      
     
      url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=#{web_info}&api-key=#{key}"
      
      response = HTTParty.get(URI(url))
    
      response["results"].each do |movie|
        #binding.pry
        name = movie["display_title"]
        rating = movie["mpaa_rating"]
        link = movie["link"]["url"]
        
        Movie.new(name,rating,link)# new movie instatnce takes in a name, a rating , and a link 34sexit
        
        
      #binding.pry
     end 
    end
  end 
  
