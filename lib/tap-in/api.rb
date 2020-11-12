
class Api

    def self.fetch_brewery
        url = "https://api.openbrewerydb.org/breweries?by_state=California"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)

        hash.each do |index|
            brewery_instance = Brewery.new(index["name"],index["city"], index["brewery_type"],index ["website_url"])
           
        end 
    end


end


