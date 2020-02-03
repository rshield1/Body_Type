
class Scraper



    @@doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    

    def ecto_info
    ectomorph_info = @@doc.search("#DPG p").children[4..8].text
    end
    
    def ecto_training
    ectomorph_training = puts @@doc.search("#DPG p").children[18..20].text
    end
  
    def meso_info
    mesomorph_info = puts @@doc.search("#DPG p").children[9..10].text
    end

    def meso_training
    mesomorph_training = puts @@doc.search("#DPG p").children[22..24].text
    end

    def endo_info
    endomorph_info = puts @@doc.search("#DPG p").children[11..12].text
    end

    def endo_training
    endomorph_train = puts @@doc.search("#DPG p").children[26..28].text
    end
    
    def in_info
    in_Between_char = puts @@doc.search("#DPG p").children[29..35].text
    end

    def goals
    goals = puts @@doc.search("#DPG p").children[14].attributes["href"].value
    end

    def all_links
        links = @@doc.search("#DPG p a")
        links.each do | link |
            puts "#{link.children.text.capitalize}:"
            puts "#{link.attributes["href"].value}"
            puts "________________________________"
        end
    end

     #(Element:0x43e3c18 {
        #name = "a",
        #attributes = [ #(Attr:0x446b0dc { name = "href", value = "https://www.bodybuilding.com/content/how-to-gain-weight.html" })],
        #children = [ #(Text "gaining muscular weight")]
        #})
end
