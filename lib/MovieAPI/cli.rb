
 class CLI
  # thiss file is used to interface with the user
  # executes the flow of what the application does
  
  def run 
    
    input = ""
    
    while input != "exit app"
    
    puts" "
    puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".blue
    
    puts " "
    
    puts "                      MOVIE REVIEW APP!  \u{1f60e}                                     "
    
    puts " Press the enter tab to begin"
    puts " "
    puts" To exit at any time type the word 'exit app', You'll be promted to choose if you want to proceed"
    puts " with a yes 'y' or no 'n' option to opt out"
    puts" "
    puts " This is an app that parses through A critics picks of certain movies and gives information"
    puts " on same. To begin any entry at all time please type the word 'enter' after which, to proceed"
    puts " "
    puts" enter the title of movie or a keyword to see, the summary and the link To"
    puts" "
    puts "the web page of the movie: Press the enter key to proceed! "
    puts " "
    puts"oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo".blue

    input = gets.strip.downcase        # requests input from user lowercase all
    
      if input == ""
        start
      elsif input == "exit app"
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
      puts " "
      puts "Enter a key word or movie name"
      puts " "
      # gets user input and removes etranew lines and spaces
      input = gets.strip.downcase 
      
      # :: shows its nested in the MOVIEAPI folder
       API.fetch_web_info(input)       
       
       CLI.list_titles
       #binding.pry
     puts ""
     puts "Would you want to continue? Enter Y or N"

      input = gets.strip.downcase
      if input == "y"
      
      
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

       
       def self.call_movie 
       
       API.new.fetch_web_info  # fetches the info from the url
    
      end
     
      def self.list_titles
        if Movie.all.length() > 0
          Movie.all.sort_by { |display_title| display_title.name }.each do |display_title|
            puts " "
            puts "Name: #{display_title.name}"
            puts " "
            puts "Summary: #{display_title.summary}"
            puts " "
            puts "Link: #{display_title.link}" 
            puts " "
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
      
      def self.list_summary
         Movie.all.sort_by do |summary_short|
          puts summary_short.name 
        end
      end
    end
  

   
   
   
   
   
   
   
   
   
  
