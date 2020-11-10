require 'pry'
require 'httparty'
require  'json'
# require_relative './brewery/tap-in.rb'

class Api
   attr_accessor :query
    
   def initialize(query)
       @query = query
   end

    def fetch_breweries
        url = "https://api.openbrewerydb.org/breweries?by_state=#{query}"
        uri = URI(url)
        response = Net::HTTP.get(url)
        hash = JSON.parse(response)
    end
end
        api = Api.new("ohio")
        binding.pry
        puts "let us pry"



