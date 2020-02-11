class Body_Type
    attr_accessor :name, :info, :training
    #Keeps Track of all scraped body types
    @@all = []

    def initialize(attributes)
        attributes.each {|k,v| self.send(("#{k}="), v)}
    #   def initialize(name:, info:, training:)
    #    @name = name
    #    @info = info
    #    @training = training
    #    @@all << self
    #    end

        @@all << self

    end

    def self.all
        @@all
    end
end