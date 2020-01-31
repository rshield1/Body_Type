class CLI
    attr_accessor :endomorph, :ectomorph, :mesomorph, :name, :ectomorph_info

    #def initialize(attributes)
        #attributes.each { | key, value | self.send(("#{key=}"), value) }
    #end
def call
    menu
    list_types
    user_input
    end


    def menu
        puts "Hey, welcome to Rob's CLI Body Type program, where you can learn your body type and how to train!"
        puts "I take only these inputs: Numbers 1-4, HELP, EXIT"
        puts "What is you body type?"
    end

    def list_types
        puts "1. Ectomorph (Slim)"
        puts "2. Mesomorph (Muscular)"
        puts "3. Endomorph (Solid/Heavy)"
        puts "4. In-Betweeners (Not-Sure)"
        puts "5. EXIT"
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
                    self.call
                elsif response.capitalize == "N"
                    puts "Ok, Maybe next time!"
                    exit
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
            @mesomorph = Body_Type.new("Mesomorph".capitalize)
            more_info
        elsif
            input.to_i == 3
            puts "You are an Endomorph"
            @endomorph = Body_Type.new("Endomorph".capitalize)
        elsif
            input.to_i == 4
            puts "You are an In-betweener"
            @in_betweener = Body_Type.new("In-Betweener".capitalize)
        elsif
            input == "EXIT"
            puts "See you later!"                                        
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