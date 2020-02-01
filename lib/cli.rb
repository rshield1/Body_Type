
class Cli
    include BodyType
    attr_accessor :endomorph, :ectomorph, :mesomorph, :name, :ectomorph_info

    def user_input
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
        elsif input == "GOALS" || "goals"
            goals = Body_Type.new("Goals")
                puts "Here is the site to help you achieve your #{goals.name}"
            goals.goals
                puts "Hope you found this information helpful!"
                puts "__________________________________________"
                self.call   
        elsif
            input == "EXIT" || input == "exit"
            puts "See you later!"
                                            
        else
            puts "Invalid!!, Try again"
            user_input
        end

    end

end