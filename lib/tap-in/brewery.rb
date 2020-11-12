class Brewery

    attr_accessor :name, :city, :brewery_type, :website_url
    @@all = []
    def initialize(name, city, brewery_type, website_url)
      
        @name = name
        @city = city
        @brewery_type = brewery_type
        @website_url = website_url
        @@all << self
    end
  
    def self.all
        @@all
    end



end