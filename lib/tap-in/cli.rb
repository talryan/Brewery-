class Cli
# @@array_states = ["Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado", "Connecticut","Delaware", "Florida", "Georgia", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon" "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington", "Wisconsin", "West Virginia","Wyoming"]
    def start

          puts " ########    ###    ########    #### ##    ## "
          puts "   ##      ## ##   ##     ##     ##  ###   ## "
          puts "   ##     ##   ##  ##     ##     ##  ####  ## "
          puts "   ##    ##     ## ########      ##  ## ## ## "
          puts "   ##    ######### ##            ##  ##  #### "
          puts "   ##    ##     ## ##            ##  ##   ### "
          puts "   ##    ##     ## ##           #### ##    ## "
                
          puts "                  .~~~~. "
          puts "                  i====i_"
          puts "                  |cccc|_) "
          puts "                  |cccc| "
          puts "                  `-==-' "
      #     puts "Welcome to your brewery locator!"
      #     puts "Please enter the name of the state you wish to view."
      #     query = gets.chomp           
      #     api= Api.new(query)
          Api.fetch_brewery
          title_screen
      #     binding.pry
    end
        
    

    

      def title_screen  
            puts "Would you like to see a list of California Breweries?"       
            user_input = gets.strip.downcase
            if user_input == "yes" || user_input == "y"
                  puts "Take a look at what California has to offer!"
                  display_list_of_breweries
                  brewery_select
                  title_screen
            elsif puts "Looks like you are already drunk, do you really need to visit a brewery right now?"
                  title_screen
            else user_input == "no"
                  puts "Hmm... Looks like you are not interested in looking at any breweries."
                  sleep(2)
                  puts "Have a nice day!"
            end
      end



      def display_list_of_breweries
            Brewery.all.each.with_index(1) do |brewery, index|
               puts "#{index}. #{brewery}"
            end
      end

      def brewery_select
            index = gets.strip.to_i - 1
            max_limit = Brewery.all.length - 1
            until index.between?(0,max_limit)
                  puts "Sorry that is an invalid choice"
                  index = gets.strip.to_i - 1
            end
            brewery_instance = Brewery.all[index]
            display_brewery_details(brewery_instance)
      end

      def  display_brewery_details(brewery)
            sleep(2)
            puts "\n"
            puts "\nName: " + brewery.name
            puts "\nCity: " + brewery.city
            puts "\nType: " + brewery.brewery_type
            puts "\nWebsite URL: " + brewery.website_url
         
        end

end




