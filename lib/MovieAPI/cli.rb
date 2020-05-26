
 class CLI
  # thiss file is used to interface with the user
  # executes the flow of what the application does
  
  def run 
    
    input = ""
    
     
   
    while input != "exit"
    
    puts" "
    puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    
    puts " "
    
    puts "      HELLO! WELCOME TO MY MOVIE REVIEW APP! HAVING FUN YET!!   \u{1f60e}    "
    
    puts" "
    puts"oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".green
    puts " "
    puts " "
    puts" To exit at any time type the word exit "
    puts" "
    puts " To begin type the word enter"
    puts " "
    puts" To see the titles of movie, the ratings and the link To"
    puts" "
    puts "the critics web, enter the title or key words of the movie"
    puts " "
    
    input = gets.strip.downcase        # requests input from user lowercase all
    
      if input == "" || input== "enter"
        start
      elsif input == "exit"
        puts ""
        puts "Thank you! Have a great day!"
        exit
      else
        puts ""
        puts "Not an available option, enter another movie title or keyword."
        start
      end
     end
    end
      
      
      def start
      puts ""
      
      input = gets.strip.downcase 
    
       API.fetch_web_info(input)       # :: shows its nested in the MOVIEAPI folder
       
       CLI.list_titles
       
       binding.pry
     puts ""
     puts "Would you want to continue? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "Not an available option, enter another movie title or keyword."
      start
    end
  end

       
      end 
  
   
   
     def self.call_movie 
       
       API.new.fetch_web_info  # fetches the info from the url
       
       Movie.all.each do |movie|# iterates through the Movies class in the @@all array
      end
    end
     
      def self.list_titles
        if Movie.all.length() > 0
          Movie.all
             .sort_by { |display_title| display_title.name } 
             .each do |display_title|
            puts "#{display_title.name} - [Rating: #{display_title.rating}, Link: #{display_title.link}]" 
          end
        else
          puts "No result to display"
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
       
  

   
   
   
   
   
   
   
   
   
  
