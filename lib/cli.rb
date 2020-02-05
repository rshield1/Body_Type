require 'pry'
class Cli
    attr_accessor :name

    def user
        puts "What is your name?"
        @name = gets.chomp if @name == nil
    end

    def call
        user
        menu
        list_types
        user_input
    end

    def user_input
        puts "What is you body type, #{self.name}?"
        input = gets.chomp
        if input.to_i == 1
            hash = Scraper.new.get_ectomorph
            @type = Body_Type.new(hash)
            more_info
        elsif
            input.to_i == 2
            hash = Scraper.new.get_mesomorph
            @type = Body_Type.new(hash)
            more_info
        elsif
            input.to_i == 3
            hash = Scraper.new.get_endomorph
            @type = Body_Type.new(hash)
            more_info
        elsif
            input.to_i == 4
            hash = Scraper.new.get_inbetweener
            @type = Body_Type.new(hash)
            more_info
        elsif 
            input.to_s == "GOALS" || input.to_s =="goals" || input.to_i == 5
            puts "GOALS:"
            @goals = Scraper.new.goals
            puts @goals
            self.call
        elsif
            input.to_s == "LINKS" || input.to_s == "links" || input.to_i == 6
            puts "LINKS:"
            @links = Scraper.new.links
            puts @links
            self.call
        elsif
            input == "EXIT" || input == "exit" || input.to_i == 7
            exit
        else
           puts "Invalid!! Try again!"
           Puts "--------------------"
           self.call
        end

    end

    def menu
        puts "Welcome #{self.name} to Rob's Body Type program! You can learn your body type and how to train!"
        puts "I take only these inputs: Numbers 1-6, HELP, GOALS, LINKS, or EXIT!"
    end

    def list_types
        puts "1. Ectomorph (Slim)"
        puts "2. Mesomorph (Muscular)"
        puts "3. Endomorph (Solid/Heavy)"
        puts "4. In-Betweeners (Not-Sure)"
        puts "5. GOALS"
        puts "6. LINKS"
        puts "7. EXIT"
    end

    def exit
        puts "See you later when you're ready to train, #{self.name}!"
    end
    
    def  training_tips
        puts "Hey #{self.name}, how about some training tips??  Y/N"
            response = gets.chomp
                if response.capitalize == "Y" && @type.name == "Ectomorph"
                    puts @type.training
                    puts "_________________________"
                    self.call
                elsif response.capitalize == "Y" && @type.name == "Mesomorph"
                    puts @type.training
                    puts "_________________________"
                    self.call
                elsif response.capitalize == "Y" && @type.name == "Endomorph"
                    puts @type.training
                    puts "_________________________"
                    self.call
                elsif response.capitalize == "N"
                    puts "Ok, Maybe next time!"
                    puts "_________________________"
                    self.call
                else
                    puts "Invalid Response"
                end
    end

    def more_info
        puts "Would you like to get more information about #{@type.name}, #{self.name}? Y/N"
        input = gets.chomp 
            if input.capitalize == "Y" && @type.name == "Ectomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                puts @type.info
                training_tips
            elsif input.capitalize == "Y" && @type.name == "Mesomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                puts @type.info
                training_tips
            elsif input.capitalize == "Y" && @type.name == "Endomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                puts @type.info
                training_tips
            elsif input.capitalize == "Y" && @type.name == "In-Betweener"
                puts @type.info
                puts "There's no additional information on #{@type.name}:"
                puts "_________________________"
                self.call
                
            elsif input.capitalize == "N"
                self.call
            else
                puts "Invalid!! Start Over!"
                self.call
            end
    end
end