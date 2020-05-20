class CLI
  # thiss file is used to interface with the user
  # executes the flow of what the application does
  
  def run 
    
    input = ""
    while input != "exit"
    
    puts" "
    puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    
    puts " "
    
    puts "      HELLO! WELCOME TO MY MOVIE REVIEW APP! lETS BEGIN THE INTERACTION   \u{1f60e}    "
    
    puts" "
    puts"oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    puts " "
    puts " "
    puts" To exit at any time type 'exit'"
    puts" To see the titles of movies  we have enter 'title'"
    puts" To see the link to the movies we have enter 'link'"
    puts" To see the MPPA ratings we have enter 'rating' "
    
    input = ""
    while input != "exit"
    #input strips any spaces and lines , an downcase ensures all characters entered are low case
    input = gets.strip.downcase 
    
     API.fetch_web_info # :: shows its nested in the MOVIEAPI folder
     case input
     when "title"
       list_titles
     when "link"
       list_links
     when "rating"
       list_ratings
         
    end  
   end
 end
   
   
     def call_movie 
       API.new.fetch_web_info   # fetches the info from the url
       
       Movies.all.each do |movie|# iterates through the Movies class in the @@all array
       
      def list_titles
        Movie.all.sort_by do |display_title|
          display_title.name
        end
      end 
      
      def list_links
         Movie.all.sort_by do |display_link|
          display_link.name
        end
      end 
      
      def list_ratings 
         Movie.all.sort_by do |display_rating|
          display_rating.name 
        end
      end
       
        # puts movie.name  # name of movie
        # puts movi.rating # rating 
        # puts movie.link #  link to the title
         
       #binding.pry
     end
   end
end
   
   
   
   
   
   
   
   
   
  