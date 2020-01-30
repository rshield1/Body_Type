require "pry"
require "nokogiri"
require "open-uri"

class Scraper
    attr_accessor :body_type, :info, :ecto_info

    def ecto_info
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    @ectomorph_info = @doc.search("#DPG p").children[4..8].text
    end
    
    def ecto_training
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    @ectomorph_training = @doc.search("#DPG p").children[18..20].text
    end
  
    def meso_scraper
    @mesomorph_info = @doc.search("#DPG p").children[9..10].text
    @mesomorph_training = @doc.search("#DPG p").children[22..24].text
    end

    def endo_scraper
    @endomorph_info = @doc.search("#DPG p").children[11..12].text
    @endomorph_train = doc.search("#DPG p").children[26..28].text
    end
    
    def in_scraper
    @in_Between_char = @doc.search("#DPG p").children[29..35].text
    end

    def goals
    @goals = @doc.search("#DPG p").children[14].attributes["href"].value
    end

end
