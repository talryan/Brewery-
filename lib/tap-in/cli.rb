class Cli
      
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
                  puts "Take a look at this un-beer-ieveable selection!"
                  puts " "
                  sleep(2)
                  Brewery.list_of_breweries
                  puts " "
                  sleep(1)
                  puts "Please select a brewery you'd like to know more about! "
                  puts "Enter a number that corresponds to the brewery name."
                  self.brewery_selection
                  sleep(2)
            elsif user_input == "no"
                  puts "Hmm... Looks like you are not interested in looking at any breweries."
                  sleep(2)
                  puts "Thank brew very much! Have a hoppy day!"
            else user_input != "yes" || user_input != "no"
                  puts " "
                  puts "Not a valid input."
                  puts "Try again."
                  puts " "
                  main_menu
            end
      end

      def brewery_selection
            index = gets.strip.to_i - 1
            max_limit = Brewery.all.length - 1
            until index.between?(0,max_limit)
                  puts "Uh oh, that brewery isn't an option."
                  index = gets.strip.to_i - 1
            end
            brewery_instance = Brewery.all[index]
            Brewery.display_brewery_details(brewery_instance)
            bookmark_breweries_menu(brewery_instance)
      end

      def bookmark_breweries_menu(brewery_instance)
            puts " "
            puts "1. Bookmark this brewery to your favorites."
            puts "2. Return to the list of breweries."
            puts "3. View bookmarked breweries."
            input = gets.strip.to_i 
            until input.between?(0,3)
                puts "Uh oh, that's not a valid choice. Try again."
                input = gets.strip.to_i 
            end
            if input == 1
                  Brewery.bookmark_brewery(brewery_instance)
                  puts "This brewery has been bookmarked!"
                  recursion
            elsif input == 2
                  sleep(1)
                 recursion
            else input == 3
                  bookmark_breweries_prompt
            end
      end

      def   bookmark_breweries_prompt
            if Brewery.view_bookmark_brewery.empty?
            puts "You have no breweries bookmarked."
            else 
            puts "Here are the breweries you've bookmarked!"
            puts Brewery.bookmark_breweries_print
            end
            recursion
      end
end




