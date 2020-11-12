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

            Api.fetch_brewery
            title_screen

    end
        
    

    

      def title_screen  
            puts "Would you like to tap into a list of California breweries?"       
            user_input = gets.strip.downcase
            if user_input == "yes" || user_input == "y"
                  puts "Take a look at what California has to offer!"
                  puts "Please select a brewery you'd like to know more about! "
                  sleep(2)
                  Brewery.display_list_of_breweries
                  self.brewery_select
                  title_screen
            elsif puts "Looks like you are already drunk, do you really need to visit a brewery right now?"
                  title_screen
            else user_input == "no"
                  puts "Hmm... Looks like you are not interested in looking at any breweries."
                  sleep(2)
                  puts "Thank brew very much! Have a hoppy day!"
            end
      end



      # def display_list_of_breweries
      #       Brewery.all.each_with_index do |brewery, index|
      #          puts "#{index+1}. #{brewery}"
      #       end
      # end

      def brewery_select
            index = gets.strip.to_i - 1
            max_limit = Brewery.all.length - 1
            until index.between?(0,max_limit)
                  puts "Sorry that is an invalid choice"
                  index = gets.strip.to_i - 1
            end
            brewery_instance = Brewery.all[index]
            Brewery.display_brewery_details(brewery_instance)
      end

      # def  display_brewery_details(brewery)
      #       sleep(2)
      #       puts "\n"
      #       puts "\nName: " + brewery.name
      #       puts "\nCity: " + brewery.city
      #       puts "\nType: " + brewery.brewery_type
      #       puts "\nWebsite URL: " + brewery.website_url
         
      #   end

end




