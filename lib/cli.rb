require_relative "./environment.rb"

class BodyType::CLI
    attr_accessor :endomorph, :ectomorph, :mesomorph, :name, :ectomorph_info

    def call
        menu
        list_types
        user_input
    end


    def menu
        puts "Hey, welcome to Rob's CLI Body Type program, where you can learn your body type and how to train!"
        puts "I take only these inputs: Numbers 1-4, HELP, EXIT, or GOALS"
        puts "What is you body type?"
    end

    def list_types
        puts "1. Ectomorph (Slim)"
        puts "2. Mesomorph (Muscular)"
        puts "3. Endomorph (Solid/Heavy)"
        puts "4. In-Betweeners (Not-Sure)"
        puts "5. EXIT"
        puts "6. GOALS"
    end

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
                    puts "__________________________________________"
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
                    puts "__________________________________________"
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
                    puts "__________________________________________"
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
                    puts "__________________________________________"
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
            input == "EXIT" || input == "exit"
            puts "See you later!"
        elsif input == "GOALS" || "goals"
            goals = Body_Type.new("Goals")
                puts "Here is the site to help you achieve your #{goals.name}"
            goals.goals
                puts "Hope you found this information helpful!"
                puts "__________________________________________"
                self.call                                       
        else
            puts "Invalid!!, Try again"
            user_input
        end

    end

    def more_info
        puts "Would you like to get more information about #{self.name}? Y/N"
        input = gets.chomp 
            if input.capitalize == "Y"
                puts "More info here on #{self.name}:"
                puts "_________________________"
                self.ectomorph_info
                training_tips
                
            elsif input.capitalize == "N"
                self.call
            else
                puts "Invalid!! Start Over!"
                self.call
            end
    end

    def  training_tips
        puts "How about some training tips??  Y/N"
                response = gets.chomp
                if response.capitalize == "Y"
                    @name.ectomorph_training
                elsif response.capitalize == "N"
                    puts "Ok, Maybe next time!"
                else
                    puts "Invalid"
                end
    end

    def exit
        puts "See you later when you're ready to train!"
    end

end