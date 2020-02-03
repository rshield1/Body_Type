
class Cli
    attr_accessor :name

    include BodyType

    def call
        menu
        list_types
        user_input
    end

    def user_input
        puts "What is you body type?"
        input = gets.chomp
        if input.to_i == 1
            ectomorph_input
        elsif
            input.to_i == 2
                mesomorph_input
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
end