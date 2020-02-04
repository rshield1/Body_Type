class Body_Type
    attr_accessor :name, :type

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
end