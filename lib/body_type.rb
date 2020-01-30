class Body_Type
    attr_accessor  :type, :training, :scraper, :ecto_info, :scraping, :info

    def initialize(type)
        @type = type
    end


    def ectomorph
        puts @type = Scraper.new.ecto_info
    end

    def ectomorph_training
        puts @type = Scraper.new.ecto_training
    end

    def training
        puts "Training tips"

    end

end