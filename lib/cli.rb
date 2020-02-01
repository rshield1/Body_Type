
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
        elsif input.to_s == "GOALS" || input.to_s =="goals"
            goals_input
           
        elsif
            input == "EXIT" || input == "exit"
            exit
                                            
        else
            puts "Invalid!!, Try again"
            user_input
        end

    end

end