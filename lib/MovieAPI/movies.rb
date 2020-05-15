#require 'pry'
# this class is to parse info from web  regarding a movie using the name, link and rating
class Movies
  attr_accessor :name, :rating, :link , 
  
  @@all = []
  
  
  def initialize(name,rating,link) #
    @name = name 
    @rating = rating 
    @link = link 
    
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 
#binding.pry

### in these methods we'll define how the information on each object can be returned

#this method returns movie names eg "the God father"
def movie_name
end


# this method returns movie ratings eg R rated, G rated et al
def movie_rating 
end 

# this method returns the review link
def movie_ling
end