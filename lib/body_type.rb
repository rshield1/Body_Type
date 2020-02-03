class Body_Type
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
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

    def goals
        puts "Goals:  Click Link Below!"
        puts "_________________________"
        Scraper.new.goals
    end

    def links
        puts "Links:  Click Links Below!"
        puts "__________________________"
        Scraper.new.all_links
    end

    

end