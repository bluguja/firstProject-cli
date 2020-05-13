require_relative "./MovieAPI/version"  
require_relative "./MovieAPI/movies" 
require_relative "./MovieAPI/cli" 
require_relative "./MovieAPI/api" 

require "pry" 
require "httparty"

module MovieAPI
  class error < standardError; end 
    #code here
  end