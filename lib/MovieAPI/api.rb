
  # This API class is responsible for getting processing info from the API web info)
  class API
  
    
    def self.fetch_web_info(web_info)
         CLI.new.run
      
        key = "P0xlJDApD8qGo6AK31J0zS19Avwu2lpz" #Web key 
        
       
        url = "https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=#{web_info}&api-key=#{key}"
        
        response = HTTParty.get(URI(url))
      
        if response["has_more"] == false 
           puts ""
           puts "Not an available option."
            CLI.new.start 
        else
            
        response["results"].each do |movie|
        name = movie["display_title"]
        summary = movie["summary_short"]
        link = movie["link"]["url"]
        
        Movie.new(name,summary,link)# new movie instatnce takes in a name, a summary , and a link 
        end 
       end 
      end
    end 
  
    
