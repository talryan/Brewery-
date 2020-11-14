require 'pry'
class Brewery

    attr_accessor :name, :city, :brewery_type, :website_url
    @@all = []
    @@bookmark_brewery = []
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

    def self.list_of_breweries
        Brewery.all.each_with_index do |brewery, index, city|
           puts "#{index+1}. #{brewery.name} - #{brewery.city}"
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

    def self.bookmark_brewery(brewery)
       @@bookmark_brewery << brewery
    end

    def self.view_bookmark_brewery
        @@bookmark_brewery
    end

    def self.bookmark_breweries_print
        self.view_bookmark_brewery.each_with_index.collect do |brewery, index, city|
           puts  "#{index+1}. #{brewery.name} - #{brewery.city}" 
        end
    end
end