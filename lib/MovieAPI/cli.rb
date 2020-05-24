 class CLI
  # thiss file is used to interface with the user
  # executes the flow of what the application does
  
  def run 
    
    input = ""
    
     if input == "exit" || input == ""
      puts "Thanks have a nice day!"
    end
   
    while input != "exit "
    
    puts" "
    puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    
    puts " "
    
    puts "      HELLO! WELCOME TO MY MOVIE REVIEW APP! lETS BEGIN THE INTERACTION   \u{1f60e}    "
    
    puts" "
    puts"oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    puts " "
    puts " "
    puts" To exit at any time type 'exit' "
    puts" To see the titles of movie, the ratings and the link To"
    puts "the critics web, enter the  title of movie"
    puts " "
    
    input = gets.strip.downcase        # requests input from user lowercase all
    
     API.fetch_web_info(input)       # :: shows its nested in the MOVIEAPI folder
     
     CLI.list_titles
    
    
    
     end
  end
 
   
   
     def self.call_movie 
       
       API.new.fetch_web_info  # fetches the info from the url
       
       Movie.all.each do |movie|# iterates through the Movies class in the @@all array
      end
    end
     
      def self.list_titles
        Movie.all
             .sort_by { |display_title| display_title.name } 
             .each do |display_title|
          puts "#{display_title.name} [Rating: #{display_title.rating}, Link: #{display_title.link}]" 
        end
      end 
      
      def self.list_links
         Movie.all.sort_by do |display_link|
         puts display_link.name
        end
      end 
      
      def self.list_ratings 
         Movie.all.sort_by do |display_rating|
          puts display_rating.name 
        end
      end
       
      #binding.pry
  
end
   

   
   
   
   
   
   
   
   
   
  
