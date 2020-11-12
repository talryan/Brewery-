
class Api

    def self.fetch_brewery
        url = "https://api.openbrewerydb.org/breweries?by_state=California"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array = JSON.parse(response)
        array
    

    # def create_brewery
    #     self.fetch_brewery.each do|hash|
    #         Brewery.new(hash["name"],hash["city"], hash["hash_type"],hash ["website_url"])
    #     end
 
        array.each do |array|
         Brewery.new(array["name"],array["city"], array["brewery_type"],array["website_url"])
           
        end
    end
    # end


end


