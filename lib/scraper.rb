require "pry"
require "nokogiri"
require "open-uri"

class Scraper
    attr_accessor :body_type, :info, 

    def doc
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    end

    def ecto_info
    doc
    @ectomorph_info = @doc.search("#DPG p").children[4..8].text
    end
    
    def ecto_training
    doc
    @ectomorph_training = @doc.search("#DPG p").children[18..20].text
    end
  
    def meso_info
    doc
    @mesomorph_info = @doc.search("#DPG p").children[9..10].text
    end

    def meso_training
    doc
    @mesomorph_training = @doc.search("#DPG p").children[22..24].text
    end

    def endo_info
    doc
    @endomorph_info = @doc.search("#DPG p").children[11..12].text
    end

    def endo_training
    doc
    @endomorph_train = doc.search("#DPG p").children[26..28].text
    end
    
    def in_info
    doc
    @in_Between_char = @doc.search("#DPG p").children[29..35].text
    end

    def goals
    doc
    @goals = @doc.search("#DPG p").children[14].attributes["href"].value
    end

end
