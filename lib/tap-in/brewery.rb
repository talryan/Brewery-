class Brewery
@@all = []
attr_accessor :name, :type
#  :address, :state

    def initialize(name, type)
        
        @name = name
        @type = type
        # @address = address
        # @state = state
        @@all << self
    end
  
    def self.all
        @@all
    end



end