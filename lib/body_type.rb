class Body_Type
    attr_accessor :type, :name

    def initialize(name)
        @name = name
    end

    

    def ectomorph_info
        puts "Infooooo"
        #Scraper.new.ecto_info
    end

    def ectomorph_training
        puts "Training"
        #Scraper.new.ecto_training
    end

    def training
        puts "Training tips"

    end

end