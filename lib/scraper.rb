
class Scraper
    attr_accessor :body_type, :info, :ecto_info, :doc


    @@doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    

    def ecto_info
    ectomorph_info = puts "#{@@doc.search("#DPG p").children[4..8].text}"
    end
    
    def ecto_training
    ectomorph_training = puts "#{@@doc.search("#DPG p").children[18..20].text}"
    end
  
    def meso_info
    mesomorph_info = puts "#{@@doc.search("#DPG p").children[9..10].text}"
    end

    def meso_training
    mesomorph_training = puts "#{@@doc.search("#DPG p").children[22..24].text}"
    end

    def endo_info
    endomorph_info = puts "#{@@doc.search("#DPG p").children[11..12].text}"
    end

    def endo_training
    endomorph_train = puts "#{@@doc.search("#DPG p").children[26..28].text}"
    end
    
    def in_info
    in_Between_char = puts @@doc.search("#DPG p").children[29..35].text
    end

    def goals
    goals = puts @@doc.search("#DPG p").children[14].attributes["href"].value
    end

end
