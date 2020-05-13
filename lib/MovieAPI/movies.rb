class MovieAPI::Movies 
  attr_accessor :name, :rating, :link 
  
  @@all = []
  
  def initialize(name, rating,link) 
    @name = name 
    @rating = rating 
    @link = link 
    
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 
