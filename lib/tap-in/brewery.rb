class Brewery

    attr_accessor :name, :city, :brewery_type, :website_url
    @@all = []
    @@save_brewery
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
        Brewery.all.each_with_index do |brewery, i, city|
           puts "#{i+1}. #{brewery.name} - #{brewery.city}"
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

    # def self.save_brewery
    #     puts "Would you like to bookmark this brewery to your travel plans?"
    #     if user_input == "yes"
    #         puts "This has been bookmarked."
    #     else user_input == "no"
    #         puts "No "
    # end


end