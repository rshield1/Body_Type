class Body_Type
    attr_accessor :name, :info, :training

    @@all = []
    def initialize(attributes)
        attributes.each {|k,v| self.send(("#{k}="), v)}
    end

    #def initialize(name:, info:, training:)
    #    @name = name
    #    @info = info
     #   @training = training
    #    @@all << self
    #end
end