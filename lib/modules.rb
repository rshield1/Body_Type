module BodyType
    class Error < StandardError; end
     #Your code goes here..
    def hello
      puts "[]"
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

    def exit
        puts "See you later when you're ready to train!"
    end
    
  end
  