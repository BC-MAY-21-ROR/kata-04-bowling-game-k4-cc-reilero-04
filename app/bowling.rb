
# Print bowling score
class Board_bowling

end

# Rules for spare
class Spare

end

# Rules for strike 
class Strike

end

# The last roll of the game.
class Last_Game 

end

# The last roll of the game.
class Game 

    def initialize
        @score = 0
        @rolls = []
        play_game
        puts "Rolls : #{@rolls}"
    end

    def play_game

        while @rolls.length < 20
            @first_roll = first_roll
            @rolls.push(@first_roll)
            @rolls.push(second_roll(@first_roll))
            @score += @first_roll + @second_roll
            @rolls.push(@score)
        end
        @rolls
    end

    def first_roll
        @first_roll = rand(0..10)
    end
    def second_roll (pins)    
        mod = 10 - pins
        @second_roll = rand(0..mod)
    end


end

Game.new()
