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

    def self.display_list_of_breweries
        Brewery.all.each_with_index do |brewery, index|
           puts "#{index+1}. #{brewery.name}"
        end
    end

    def self.display_brewery_details(brewery)
        sleep(2)
        puts "\n"
        puts "\nName: " + brewery.name
        puts "\nCity: " + brewery.city
        puts "\nType: " + brewery.brewery_type
        puts "\nWebsite URL: " + brewery.website_url
     
    end


end