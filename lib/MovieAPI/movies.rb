#require 'pry'
# this class is to parse info from web  regarding a movie using the name, link and rating
class Movie
  attr_accessor :name, :rating, :link  
  
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
  
 
