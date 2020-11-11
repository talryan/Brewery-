
class Api
   attr_accessor :query
    
   def initialize(query)
       @query = query
   end

    def fetch_brewery
        url = "https://api.openbrewerydb.org/breweries?by_state=#{@query}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        hash 
    end

    def create_brewery
        self.fetch_brewery.collect do |index|
          Brewery.new(index["name"],index["city"], index["brewery_type"],index ["website_url"])
         end 
    end


end


