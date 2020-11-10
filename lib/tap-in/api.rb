
class Api
   attr_accessor :query
    
   def initialize(query)
       @query = query
   end

    def fetch_brewery
        url = "https://api.openbrewerydb.org/breweries?by_state=#{query}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        hash 
    end
    def create_brewery
        self.fetch_brewery.collect do |index|
          Brewery.new(index["name"],index["brewery_type"])
        end 
    end


end

# api =Api.new("Ohio")
#      binding.pry
#      "let us pry"



