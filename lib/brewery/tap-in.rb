require_relative '../environment.rb'

class Brewery
@@all = []
attr_accessor :name, :type, :address, :state

    def initialize(name, type, address, state)
        @name = name
        @type = type
        @address = address
        @state = state
        @@all << self
    end
  
    def self.all
        @@all
    end

    def self.display_breweries_from_state
    end


end