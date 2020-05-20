class CLI
  # thiss file is used to interface with the user
  # executes the flow of what the application does
  
  def run
    
    puts" "
    puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    
    puts " "
    
    puts "      HELLO! WELCOME TO MY MOVIE REVIEW APP! lETS BEGIN THE INTERACTION   \u{1f60e}    "
    
    puts" "
    puts"oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    puts " "
    puts " "
    puts" Enter the title of the movie  to see the rating of the movie, the link "
    puts" to the reviews,and a short summary of the tiled movie "
    puts " "
    
    # input strips any spaces and lines , an downcase ensures all characters entered are low case
    @get_input_from_user = gets.strip.downcase 
    
     API.fetch_web_info # :: shows its nested in the MOVIEAPI folder
   end
   
   
     def call_movie 
       API.new.fetch_web_info   # fetches the info from the url
       
       Movies.all.each do |movie|# iterates through the Movies class in the @@all array
       
         puts movie.name  # name of movie
         puts movi.rating # rating 
         puts movie.link #  link to the title
         
       #binding.pry
     end
   end
end
   
   
   
   
   
   
   
   
   
  