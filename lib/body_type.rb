class Body_Type
    attr_accessor :type, :name

    def initialize(name)
        @name = name
    end

    

    def ectomorph_info
        puts "Ectomorph Info:"
        Scraper.new.ecto_info
    end

    def ectomorph_training
        puts "Ectomorph Training:"
        Scraper.new.ecto_training
    end

    def endomorph_info
        puts "endomorph Info:"
        Scraper.new.endo_info
    end

    def endomorph_training
        puts "Endomorph_Training:"
        Scraper.new.endo_training
    end
    
    def mesomorph_info
        puts "Mesomorph Info:"
        Scraper.new.meso_info
    end

    def mesomorph_training
        puts "Mesomorph Training:"
        Scraper.new.meso_training
    end
    
    def in_betweener_info
        puts "In-Betweener Info:"
        Scraper.new.in_info
    end

    def in_betweener_training
        puts "In Betweener Training:"
        Scraper.new.in_training
    end
    

end