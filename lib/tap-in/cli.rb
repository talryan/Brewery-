class Cli
      @@bookmark =[]
    
      def start

            puts " ########    ###    ########    #### ##    ## "
            puts "   ##      ## ##   ##     ##     ##  ###   ## "
            puts "   ##     ##   ##  ##     ##     ##  ####  ## "
            puts "   ##    ##     ## ########      ##  ## ## ## "
            puts "   ##    ######### ##            ##  ##  #### "
            puts "   ##    ##     ## ##            ##  ##   ### "
            puts "   ##    ##     ## ##           #### ##    ## "

            puts "Your California roadtrip brewery tour!"
            Api.fetch_brewery
            first_selection
      end
      
      def first_selection
            puts "Would you like to tap in to our list of reccommended breweries?" 
            puts "Enter 'yes' if you would like to proceed."
            main_menu
      end

      def recursion
            puts "Would you like to check out another brewery?"
            main_menu
      end

      def main_menu     
            user_input = gets.chomp.downcase
            if user_input == "yes"
                  puts " "
                  puts " "
                  puts "Take a look at this un-beer-ieveable selection!"
                  puts " "
                  sleep(2)
                  Brewery.list_of_breweries
                  puts " "
                  sleep(1)
                  puts "Please select a brewery you'd like to know more about! "
                  puts "Enter a number that corresponds to the brewery name."
                  self.brewery_select
                  sleep(2)
                  recursion
                  # puts "Here are the breweries you viewed!"
                  # puts @@bookmark
            elsif user_input == "no"
                  puts "Hmm... Looks like you are not interested in looking at any breweries."
                  sleep(2)
                  puts "Thank brew very much! Have a hoppy day!"
            else user_input != "yes" || user_input != "no"
                  puts " "
                  puts " "
                  puts "Not a valid input."
                  puts "Try again."
                  puts " "
                  puts " "
                  main_menu
            end
      
      end


      def brewery_select
            index = gets.strip.to_i - 1
            max_limit = Brewery.all.length - 1
            until index.between?(0,max_limit)
                  puts "Uh oh, that brewery isn't an option."
                  index = gets.strip.to_i - 1
            end
            brewery_instance = Brewery.all[index]
            Brewery.display_brewery_details(brewery_instance)
      end
end




