require "pry"
require "nokogiri"
require "open-uri"

class Scraper
    attr_accessor :body_type, :info, :ecto_info

    def doc
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    end

    def ecto_info
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    ectomorph_info = puts "#{@doc.search("#DPG p").children[4..8].text}"
    end
    
    def ecto_training
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    ectomorph_training = puts "#{@doc.search("#DPG p").children[18..20].text}"
    end
  
    def meso_info
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    mesomorph_info = puts "#{@doc.search("#DPG p").children[9..10].text}"
    end

    def meso_training
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    mesomorph_training = puts "#{@doc.search("#DPG p").children[22..24].text}"
    end

    def endo_info
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    endomorph_info = puts "#{@doc.search("#DPG p").children[11..12].text}"
    end

    def endo_training
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    endomorph_train = puts doc.search("#DPG p").children[26..28].text
    end
    
    def in_info
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    in_Between_char = puts @doc.search("#DPG p").children[29..35].text
    end

    def goals
    @doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
    goals = puts @doc.search("#DPG p").children[14].attributes["href"].value
    end

end
