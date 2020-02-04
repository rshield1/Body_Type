
class Scraper
    attr_accessor :name, :info, :training, :goals, :links

    def initialize(name)
        @name = name
    end

    @@all = []

    @@doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    

    def info
        if self.name == "Ectomorph"
            puts @@doc.search("#DPG p").children[4..8].text
        elsif self.name == "Mesomorph"
            puts @@doc.search("#DPG p").children[9..10].text
        elsif self.name == "Endomorph"
           puts @@doc.search("#DPG p").children[11..12].text
        elsif self.name == "In-Betweener"
            puts @@doc.search("#DPG p").children[29..35].text
        else
            puts "not working man"
        end
    end
    
    def training
        if self.name == "Ectomorph"
            puts @@doc.search("#DPG p").children[18..20].text
        elsif self.name == "Mesomorph"
            puts @@doc.search("#DPG p").children[22..24].text
        elsif self.name == "Endomorph"
            puts @@doc.search("#DPG p").children[26..28].text
        end
    end
  
    def goals
        puts @@doc.search("#DPG p").children[14].attributes["href"].value
    end

    def links
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
