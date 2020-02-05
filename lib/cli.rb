require 'pry'
class Cli
    attr_accessor :name

    #Grabs user name

    def user
        if @name == nil
        puts "What is your name?"
        @name = gets.chomp
        end
    end

    #Main method call to initialize the program

    def call
        user
        menu
        sleep 1 
        list_types
        sleep 1
        user_input
    end
    #User input
    def user_input
        puts "WHAT IS YOUR BODY TYPE, #{self.name.upcase}?"
        input = gets.chomp
        if input.to_i == 1
            hash = Scraper.new.get_ectomorph
            @type = Body_Type.new(hash)
            sleep 1
            more_info
        elsif
            input.to_i == 2
            hash = Scraper.new.get_mesomorph
            @type = Body_Type.new(hash)
            sleep 1
            more_info
        elsif
            input.to_i == 3
            hash = Scraper.new.get_endomorph
            @type = Body_Type.new(hash)
            sleep 1
            more_info
        elsif
            input.to_i == 4
            hash = Scraper.new.get_inbetweener
            @type = Body_Type.new(hash)
            sleep 1
            more_info
        elsif 
            input.to_s == "GOALS" || input.to_s =="goals" || input.to_i == 5
            puts "GOALS:"
            @goals = Scraper.new.goals
            puts @goals
            sleep 1
            self.call
        elsif
            input.to_s == "LINKS" || input.to_s == "links" || input.to_i == 6
            puts "LINKS:"
            @links = Scraper.new.links
            sleep 1
            puts @links

            self.call
        elsif
            input == "EXIT" || input == "exit" || input.to_i == 7
            sleep 1
            exit
        else
           puts "Invalid!! Try again!"
           puts "--------------------"
           sleep 1
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

    #Training
    def  training_tips
        puts "HEY #{self.name.upcase}, HOW ABOUT SOME TRAINING TIPS??  Y/N"
            response = gets.chomp
                if response.capitalize == "Y" && @type.name == "Ectomorph"
                    puts @type.training
                    puts "_________________________"
                    sleep 1
                    self.call
                elsif response.capitalize == "Y" && @type.name == "Mesomorph"
                    puts @type.training
                    puts "_________________________"
                    sleep 1
                    self.call
                elsif response.capitalize == "Y" && @type.name == "Endomorph"
                    puts @type.training
                    puts "_________________________"
                    sleep 1
                    self.call
                elsif response.capitalize == "N"
                    puts "Ok, Maybe next time!"
                    puts "_________________________"
                    sleep 1
                    self.call
                else
                    puts "Invalid Response"
                end
    end

    #More information
    def more_info
        puts "WOULD YOU LIKE MORE INFO ON #{@type.name.upcase}, #{self.name.upcase}? Y/N"
        input = gets.chomp 
            if input.capitalize == "Y" && @type.name == "Ectomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                puts @type.info
                sleep 1
                training_tips
            elsif input.capitalize == "Y" && @type.name == "Mesomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                puts @type.info
                sleep 1
                training_tips
            elsif input.capitalize == "Y" && @type.name == "Endomorph"
                puts "More info here on #{@type.name}:"
                puts "_________________________"
                puts @type.info
                sleep 1
                training_tips
            elsif input.capitalize == "Y" && @type.name == "In-Betweener"
                puts @type.info
                puts "There's no additional information on #{@type.name}:"
                puts "_________________________"
                sleep 1
                self.call
                
            elsif input.capitalize == "N"
                sleep 1
                self.call
            else
                puts "Invalid!! Start Over!"
                sleep 1
                self.call
            end
    end 
    
    def exit
        puts "SEE YOU LATER WHEN YOU'RE READY TO TRAIN, #{self.name.upcase}!"
    end
end