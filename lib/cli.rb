class CLI

def call
    puts "What is you body type?"
    puts "1. Ectomorph (Slim)"
    puts "2. Mesomorph (Muscular)"
    puts "3. Endomorph (Solid/Heavy)"
    user_body_type = gets.chomp.to_i
        if user_body_type == 1
            puts "You are an Ectomorph"
        elsif
            user_body_type == 2
            puts "You are an Ectomorph"
        elsif
            user_body_type == 3
            puts "You are an Endomorph"                                            
        else
            puts "Invalid"
        end
end

end