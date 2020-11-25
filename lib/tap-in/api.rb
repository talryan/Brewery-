
class Api

    def self.fetch_brewery
        url = "https://api.openbrewerydb.org/breweries?by_state=California"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_hashes = JSON.parse(response)
        array_of_hashes
 
        array_of_hashes.each do |brewery|
         Brewery.new(brewery["name"],brewery["city"], brewery["brewery_type"],brewery["website_url"])
           
        end
    end


end


