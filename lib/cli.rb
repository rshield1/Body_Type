
class Cli
    include BodyType
    

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
        elsif 
            input.to_s == "GOALS" || input.to_s =="goals" || input.to_i == 5
            goals_input
        elsif
            input == "EXIT" || input == "exit" || input.to_i == 6
            exit
        else
            puts "Invalid!!, Try again"
            user_input
        end

    end

end