require_relative "./body_type/version"
require "pry"
require "nokogiri"
require "open-uri"
require_relative "./body_type.rb"
require_relative "./cli"
require_relative "./scraper.rb"

module BodyType
  class Error < StandardError; end
  # Your code goes here...
end

doc = Nokogiri::HTML(open("https://www.bodybuilding.com/fun/becker3.htm"))
Ectomorph_Char = doc.search("#DPG p").children[4..8].text
  Ectomorph_Training = doc.search("#DPG p").children[18..20].text

Endomorph_Char = doc.search("#DPG p").children[11..12].text
  Endomorph_Training = doc.search("#DPG p").children[26..28].text

Mesomorph_Char = doc.search("#DPG p").children[9..10].text
  Mesomorph_Training = doc.search("#DPG p").children[22..24].text

In_Between_Char = doc.search("#DPG p").children[29..35].text

goals = doc.search("#DPG p").children[14].attributes["href"].value