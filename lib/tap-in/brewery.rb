class Brewery
@@all = []
attr_accessor  :name, :city, :type , :website_url

    def initialize(name, city, type, website_url)
      
        @name = name
        @city = city
        @type = type
        @website_url = website_url
        @@all << self
    end
  
    def self.all
        @@all
    end



end