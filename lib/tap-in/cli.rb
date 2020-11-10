class Cli

    def start

          puts " ########    ###    ########    #### ##    ## "
          puts "   ##      ## ##   ##     ##     ##  ###   ## "
          puts "   ##     ##   ##  ##     ##     ##  ####  ## "
          puts "   ##    ##     ## ########      ##  ## ## ## "
          puts "   ##    ######### ##            ##  ##  #### "
          puts "   ##    ##     ## ##            ##  ##   ### "
          puts "   ##    ##     ## ##           #### ##    ## "
                
          puts"                   .~~~~.
                                  i====i_
                                  |cccc|_)
                                  |cccc|   
                                  `-==-' "
      query = gets.chomp           
      api= Api.new(query)
      api.fetch_brewery
      binding.pry
      end
end


puts "Cli"
