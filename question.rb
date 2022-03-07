class Question
    # attr_accessor :turn 

    # def initialize(turn)
    #     @turn = turn
    # end

    def ask(turn)
        num1 = rand(1..20)
        num2 = rand(1..20)

        puts "----- NEW TURN -----"
        puts "Player #{turn}: What does #{num1} + #{num2} equal?"
        answer = gets.chomp 
        if answer.to_i == num1 + num2
            puts "Correct!"
            return true
        else
            puts "Incorrect!"
            return false
        end
    end
    
end



