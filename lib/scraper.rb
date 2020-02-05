
class Scraper
    #document needed to scrape
    @@doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    

    #method calls for each bodytype

    def get_ectomorph

        @@doc.search("#DPG p").children[4..8].text
        @@doc.search("#DPG p").children[18..20].text

        {name: "Ectomorph",
        info: @@doc.search("#DPG p").children[4..8].text,
        training: @@doc.search("#DPG p").children[18..20].text}
    end

    def get_mesomorph
        @@doc.search("#DPG p").children[9..10].text
        @@doc.search("#DPG p").children[22..24].text

        {name: "Mesomorph",
        info: @@doc.search("#DPG p").children[9..10].text,
        training: @@doc.search("#DPG p").children[22..24].text}
    end

    def get_endomorph
        @@doc.search("#DPG p").children[11..12].text
        @@doc.search("#DPG p").children[26..28].text

        {name: "Endomorph",
        info: @@doc.search("#DPG p").children[11..12].text,
        training: @@doc.search("#DPG p").children[26..28].text}
    end

    def get_inbetweener
        @@doc.search("#DPG p").children[29..35].text

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

     #(Element:0x43e3c18 {
        #name = "a",
        #attributes = [ #(Attr:0x446b0dc { name = "href", value = "https://www.bodybuilding.com/content/how-to-gain-weight.html" })],
        #children = [ #(Text "gaining muscular weight")]
        #})
end
