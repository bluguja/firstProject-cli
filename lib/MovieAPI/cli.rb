
  class CLI
  # thiss file is used to interface with the user
  # executes the flow of what the application does
  
  
    puts" "
    puts "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
    puts "                      MOVIE REVIEW APP!  \u{1f60e} "
    puts ""
    puts "                       Press the enter tab to begin"
    puts " "
    puts" To exit at any time type the word 'exit app', You'll be"
    puts " promted to choose if you want to proceed "
    puts " with a yes 'y' or no 'n' option to opt out"
    puts" "
    puts" enter the title of th movie or a keyword to see its summary and the link"
    puts"oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"

  
    def run 
      
      input = ""
      
      while input != "exit app"
      
      
      input = gets.strip.downcase        # requests input from user lowercase all
      
        if input == ""
          start
        elsif input == "exit app"
          puts "Thank you! Have a great day!"
          exit
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
      
      
       API.fetch_web_info(input)       
       
       
       CLI.list_titles(input)
        view_more_info?
       
      puts ""
      puts "Would you want to continue? Enter Y or N"

      input = gets.strip.downcase
      if input == "y"
        
        Movie.destroy
        start
      elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
      
        puts ""
        puts "Not an available option, enter another movie title or keyword."
        start
      end
    end
    
    
    def self.call_movie 
       
       API.new.fetch_web_info  # fetches the info from the url
    
    end
     
    def self.list_titles(input)
      i = 1
      if Movie.all.length() > 0
        Movie.all.sort_by { |display_title| display_title.name }.each do |display_title|
            
          if display_title.name.downcase.include?(input) 
             
             Movie.display_list_titles << "#{i}. Name: #{display_title.name}"
             Movie.selected_matches << display_title
              puts " "
              puts "#{i}. Name: #{display_title.name}"
              
              i += 1
          
          end
          
        end
       
      end
      
    end 
      
    def view_more_info?
      puts ""
      puts "enter the coresponding number by the list, example 1, to display the link "
      puts " and a sumary of the chosen Movie"
      input = gets.strip.downcase 
      count = Movie.display_list_titles.size
      Movie.selected_matches.each.with_index(1) do |movie, index|
        
        if input == index.to_s
          puts ""
          puts "#{movie.link}"
          puts ""
          puts "#{movie.summary}"
        end
      
        
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
  

   
   
   
   
   
   
   
   
   
  
