require_relative "./MovieAPI/version"  
require_relative "./MovieAPI/movies" 
require_relative "./MovieAPI/cli" 
require_relative "./MovieAPI/api" 



# amazing APIs you could add more depending on what one wants
require "pry" 
require "httparty" ##interacting with api
require "json"    ##parsing data from api in json
require 'colorize'
require 'emoji'

# module MovieAPI
#   class error < standardError; end 
#     #code here
#   end