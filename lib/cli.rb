class CLI
    attr_accessor :body_type, :info

def call
    menu
    list_types
    input = gets.chomp
        if input.to_i == 1
            puts "You are an Ectomorph"
            @name = Body_Type.new("ectomorph")
            more_info
        elsif
            input.to_i == 2
            puts "You are an Mesomorph"
        elsif
            input.to_i == 3
            puts "You are an Endomorph"
        elsif
            input.to_i == 4
            puts "You are an In-betweener" 
        elsif
            input ==  "EXIT"
            self.exit                                          
        else
            puts "Invalid!!"
        end
    end

    def menu
        puts "Hey, welcome to my Body Type, where you can learn how to train!"
        puts "I take only these inputs Numbers 1-4, HELP, EXIT"
        puts "What is you body type?"
    end

    def list_types
        puts "1. Ectomorph (Slim)"
        puts "2. Mesomorph (Muscular)"
        puts "3. Endomorph (Solid/Heavy)"
        puts "4. In-Betweeners (Not-Sure)"
        puts "5. EXIT"
    end

    def more_info
        puts "Would you like to get more information? Y/N"
        input = gets.chomp 
            if input.capitalize == "Y"
                puts "showing more information"
                @name.info
            elsif input.capitalize == "N"
                self.call
            else
                puts "Invalid!! Start Over!"
                self.call
            end
    end

    def input
        input = gets.chomp
        if input.to_i == 1
            puts "You are an Ectomorph"
            name = Body_Type.new("ectomorph")
            more_info
        elsif
            input.to_i == 2
            puts "You are an Mesomorph"
        elsif
            input.to_i == 3
            puts "You are an Endomorph"
        elsif
            input.to_i == 4
            puts "You are an In-betweener" 
        elsif
            input == "EXIT"
            self.exit                                          
        else
            puts "Invalid!!"
        end

    end


    def exit
        puts "See you later when you're ready to train!"
    end

end