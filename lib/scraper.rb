
class Scraper
    #Document needed to scrape
    @@doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    

    #Method calls for each bodytype

    def get_ectomorph
        {name: "Ectomorph",
        info: @@doc.search("#DPG p").children[4..8].text,
        training: @@doc.search("#DPG p").children[18..20].text}
    end

    def get_mesomorph
        {name: "Mesomorph",
        info: @@doc.search("#DPG p").children[9..10].text,
        training: @@doc.search("#DPG p").children[22..24].text}
    end

    def get_endomorph
        {name: "Endomorph",
        info: @@doc.search("#DPG p").children[11..12].text,
        training: @@doc.search("#DPG p").children[26..28].text}
    end

    def get_inbetweener
        {name: "In-Betweener",
        info: @@doc.search("#DPG p").children[29..35].text,
        training: nil}
    end
  
    def goals
        @@doc.search("#DPG p").children[14].attributes["href"].value
    end

    #All additional links

    def links
        links = @@doc.search("#DPG p a")
        links.map do | link |
            link.children.text.capitalize
            link.attributes["href"].value
        end
    end
end
