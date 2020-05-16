
# these files are known where the are on the sytem hence the use of the word rquire_relative
require_relative "./MovieAPI/version"  
require_relative "./MovieAPI/movies" 
require_relative "./MovieAPI/cli" 
require_relative "./MovieAPI/api" 



# amazing APIs you could add more depending on what one wants
# these files are on the system, but we dont know where they are hence the use of the word require
require "pry" 
require "httparty" ##interacting with api
require "json"    ##parsing data from api in json
require 'colorize'## used to color the characters in the terminal
require 'emoji'## used to describe Emojis in the terminal
require 'dotenv'
Dotenv.load

# module MovieAPI
#   class error < standardError; end 
#     #code here
#   end