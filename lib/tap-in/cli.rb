class Cli
@@array_states = ["Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado", "Connecticut","Delaware", "Florida", "Georgia", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon" "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington", "Wisconsin", "West Virginia","Wyoming"]
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
          puts "Welcome to your brewery locator!"
      #     puts "Please enter the name of the state you wish to view."
      #     query = gets.chomp           
      #     api= Api.new(query)
          Api.fetch_brewery
          self.title_screen
      #     binding.pry
    end
        
    
end
      def self.states
      @@array_states
      end

      def title_screen  
            puts "Please enter the name of the state you wish to view."
            query = gets.chomp            
      #     array_states = ["Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado", "Connecticut","Delaware", "Florida", "Georgia", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon" "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington", "Wisconsin", "West Virginia","Wyoming"]
          input = gets.strip
          if query.find(@@array_states)
            puts list_of_breweries
          else
            puts "Not a valid state name."

              sleep(1)
              title_screen
              puts "Have a nice day!"
          end
      end




      # def display_list_of_breweries
      #       Brewery.all.each.with_index(1) do |brewery, index|
      #           puts "#{index}. #{brewery}"
      #       end
      # end
      # end

      

      def  display_brewery_details(brewery)
            sleep(1)
            puts "\n"
            puts brewery.name
            puts "\nCity: " + brewery.city
            puts "\n:Type: " + brewery.type
            puts "\n Website URL: " + brewery.website_url
         
        end






