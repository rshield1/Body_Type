require "pry"
require "nokogiri"
require "open-uri"
require_relative "./body_type/version"
require_relative "./body_type.rb"
require_relative "./cli"
require_relative "./scraper.rb"

module BodyType
  class Error < StandardError; end
  # Your code goes here...
  def user_input
    input = gets.chomp
    if input.to_i == 1
        puts "You are an Ectomorph"
        ectomorph = Body_Type.new("Ectomorph".capitalize)
        puts "Would you like to get more information about #{ectomorph.name}? Y/N"
        input = gets.chomp 
        if input.capitalize == "Y"
            puts "More info here on #{ectomorph.name}:"
            puts "_________________________"
            ectomorph.ectomorph_info
            puts "How about some training tips??  Y/N"
            response = gets.chomp
            if response.capitalize == "Y"
                ectomorph.ectomorph_training
                puts "Hope you found this information helpful!"
                self.call
            elsif response.capitalize == "N"
                puts "Ok, Maybe next time!"
                self.call
            else
                puts "Invalid"
                self.call
            end
            
        elsif input.capitalize == "N"
            self.call
        else
            puts "Invalid!! Start Over!"
            self.call
        end


    elsif
        input.to_i == 2
        puts "You are an Mesomorph"
        mesomorph = Body_Type.new("Mesomorph".capitalize)
        puts "Would you like to get more information about #{mesomorph.name}? Y/N"
        input = gets.chomp 
        if input.capitalize == "Y"
            puts "More info here on #{mesomorph.name}:"
            puts "_________________________"
            mesomorph.mesomorph_info
            puts "How about some training tips??  Y/N"
            response = gets.chomp
            if response.capitalize == "Y"
                mesomorph.mesomorph_training
                puts "Hope you found this information helpful!"
                self.call
            elsif response.capitalize == "N"
                puts "Ok, Maybe next time!"
                self.call
            else
                puts "Invalid"
                self.call
            end
            
        elsif input.capitalize == "N"
            self.call
        else
            puts "Invalid!! Start Over!"
            self.call
        end
    elsif
        input.to_i == 3
        puts "You are an Endomorph"
        endomorph = Body_Type.new("Endomorph".capitalize)
        puts "Would you like to get more information about #{endomorph.name}? Y/N"
        input = gets.chomp 
        if input.capitalize == "Y"
            puts "More info here on #{endomorph.name}:"
            puts "_________________________"
            endomorph.endomorph_info
            puts "How about some training tips??  Y/N"
            response = gets.chomp
            if response.capitalize == "Y"
                endomorph.endomorph_training
                puts "Hope you found this information helpful!"
                self.call
            elsif response.capitalize == "N"
                puts "Ok, Maybe next time!"
                self.call
            else
                puts "Invalid"
                self.call
            end
            
        elsif input.capitalize == "N"
            self.call
        else
            puts "Invalid!! Start Over!"
            self.call
        end
    elsif
        input.to_i == 4
        puts "You are an In-betweener"
        in_betweener = Body_Type.new("In_Betweener".capitalize)
        puts "Would you like to get more information about #{in_betweener.name}? Y/N"
        input = gets.chomp 
        if input.capitalize == "Y"
            puts "More info here on #{in_betweener.name}:"
            puts "_________________________"
            in_betweener.in_betweener_info
            puts "How about some training tips??  Y/N"
            response = gets.chomp
            if response.capitalize == "Y"
                in_betweener.in_betweener_training
                puts "Hope you found this information helpful!"
                self.call
            elsif response.capitalize == "N"
                puts "Ok, Maybe next time!"
                self.call
            else
                puts "Invalid"
                self.call
            end
            
        elsif input.capitalize == "N"
            self.call
        else
            puts "Invalid!! Start Over!"
            self.call
        end
    elsif
        input == "EXIT"
        puts "See you later!"                                        
    else
        puts "Invalid!!, Try again"
        user_input
    end

end
end

