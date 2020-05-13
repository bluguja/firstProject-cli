class MovieAPI::CLI 
   
   def call 
     MovieAPI::.new.fetch 
     MovieAPI::Movies.all.each do |movie| 
       puts movie.name 
     end 
   end 
 end
