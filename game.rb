require './question.rb'

class Game
  attr_accessor :p1_lives, :p2_lives, :turn
 
  def initialize()
    @turn = 1
    @p1_lives = 3
    @p2_lives = 3

  end

  def start()
    question = Question.new()

    # if !question.ask
    #     puts @p1_lives
    #     @p1_lives -= 1
    #     puts p1_lives      
    #     puts 'your dead'
    # end

    while @p1_lives != 0 && @p2_lives != 0 do

      # Ask Question
      if !question.ask(@turn)
        # Removes lives based off current player
        if @turn == 1
          @p1_lives -= 1
        elsif @turn == 2
          @p2_lives -= 1
        end
      end

      # Swaps turn based on current value
      if @turn == 1
        @turn = 2
      elsif @turn == 2
        @turn = 1
      end

      # Update Score
      puts "P1: #{@p1_lives}/3 vs P2: #{@p2_lives}/3"
      if @p1_lives == 0
        puts 'Winner is Player 2'
      end
      if @p2_lives == 0
        puts 'Winner is Player 1'
      end

    end
  end
end
