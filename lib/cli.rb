require 'pry'
class Cli
    attr_accessor :type, :scraper, :ectomorph, :endomorph, :mesomorph, :in_betweener

    def call
        menu
        list_types
        user_input
    end

    def user_input
        puts "What is you body type?"
        input = gets.chomp
        if input.to_i == 1
            @scraper = Scraper.new("Ectomorph")
            @type = Body_Type.new("Ectomorph")
            more_info
        elsif
            input.to_i == 2
            @scraper = Scraper.new("Mesomorph")
            @type = Body_Type.new("Mesomorph")
            more_info
        elsif
            input.to_i == 3
                endomorph_input
        elsif
            input.to_i == 4
                in_betweener_input
        elsif 
            input.to_s == "GOALS" || input.to_s =="goals" || input.to_i == 5
            goals_input
        elsif
            input.to_s == "LINKS" || input.to_s == "links" || input.to_i == 6
            links_input
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
        puts "Welcome to Rob's CLI Body Type program, where you can learn your body type and how to train!"
        puts "I take only these inputs: Numbers 1-6, HELP, GOALS, or EXIT!"
        puts "Or if you just need all of the important links on the page, type LINKS"
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
        puts "See you later when you're ready to train!"
    end
    
    def  training_tips
        puts "How about some training tips??  Y/N"
            response = gets.chomp
                if response.capitalize == "Y" && @type.name == "Ectomorph"
                    @scraper.training
                elsif response.capitalize == "Y" && @type.name == "Mesomorph"
                    @scraper.training
                elsif response.capitalize == "Y" && @type.name == "Endomorph"
                    @scraper.trainer
                elsif response.capitalize == "N"
                    puts "Ok, Maybe next time!"
                else
                    puts "Invalid Response"
                end
    end

    def more_info
        puts "Would you like to get more information about #{@type.name}? Y/N"
        input = gets.chomp 
            if input.capitalize == "Y" && @type.name == "Ectomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                @scraper.info
                training_tips
            elsif input.capitalize == "Y" && @type.name == "Mesomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                @scraper.info
                training_tips
            elsif input.capitalize == "Y" && self.name == "Mesomorph"
                puts "More info here on #{self.name}:"
                puts "_________________________"
                self.mesoomorph_info
                training_tips
            elsif input.capitalize == "Y" && self.name == "In_Betweener"
                puts "There's no additional information on #{self.name}:"
                puts "_________________________"
                
            elsif input.capitalize == "N"
                self.call
            else
                puts "Invalid!! Start Over!"
                self.call
            end
    end

    def goals_input
        goals = Body_Type.new("Goals")
        puts "Here is the site to help you achieve your #{goals.name}"
        goals.goals
        puts "Hope you found this information helpful!"
        puts "__________________________________________"
        self.call
    end

    def links_input
        links = Body_Type.new("links")
        puts "Here are the #{links.name} that will give you additional information to get started:"
        puts "...."
        puts "......."
        puts "........."
        puts ".........."
        links.links
        puts "Hope you found this information helpful!"
        self.call
    end
end