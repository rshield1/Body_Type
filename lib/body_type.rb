class Body_Type
    attr_accessor  :type, :characteristics, :training, :nutrition, :notes


    def self.scrape_ectomorph
    doc = doc = Nokogiri::HTML(open("https://www.jefit.com/exercise-tips/three-different-body-types"))
    type = doc.search(".post-content.h3").text

    end



end