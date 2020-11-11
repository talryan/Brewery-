class Brewery
@@all = []
attr_accessor :name, :type, :city, :website_url

    def initialize(name, type, city, website_url)
        
        @name = name
        @type = type
        @city = city
        @website_url = website_url
        @@all << self
    end
  
    def self.all
        @@all
    end

    def display 
    end


end