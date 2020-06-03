#require 'pry'
# this class is to parse info from web  regarding a movie using the name, link and summary methods
class Movie
  attr_accessor :name, :summary, :link  
  
  @@all = []
  
  
  def initialize(name,summary,link) 
    @name = name 
    @summary = summary 
    @link = link 
    
    @@all << self 
    
  
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 
  
 
