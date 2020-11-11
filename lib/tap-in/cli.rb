class Cli

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
          puts "What state would you like to see a list of breweries for?"
          puts "Enter State Name"
      end 

      query = gets.chomp           
      api= Api.new(query)
      api.fetch_brewery
      binding.pry
      end
end


puts "Cli"
