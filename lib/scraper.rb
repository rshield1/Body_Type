class Scraper
    def ecto_scraper
    doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    ectomorph_Char = doc.search("#DPG p").children[4..8].text
      ectomorph_Training = doc.search("#DPG p").children[18..20].text
    end

    def meso_scraper
    mesomorph_Char = doc.search("#DPG p").children[9..10].text
      mesomorph_Training = doc.search("#DPG p").children[22..24].text
    end

    def endo_scraper
    indomorph_Char = doc.search("#DPG p").children[11..12].text
      indomorph_Training = doc.search("#DPG p").children[26..28].text
    end
    
    def in_scraper
    in_Between_Char = doc.search("#DPG p").children[29..35].text
    end

    def goals
    goals = doc.search("#DPG p").children[14].attributes["href"].value
    end
end
