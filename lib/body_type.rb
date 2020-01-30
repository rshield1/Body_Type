class Body_Type
    attr_accessor  :type, :training, :more_info

    def initialize(type)
    @type = type
    end

    def info
        puts "more info here"
    end

    def training
        puts "training tips"

    end

end