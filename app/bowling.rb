# frozen_string_literal: true

# The principal class.
class Game
  def initialize
    @score = 0
    @rolls = []
    @first_roll = first_roll
    second_roll(@first_roll)
    play_game
    puts "Rolls : #{@rolls}"
  end

  def play_game
    while @rolls.length < 29
      @rolls.push(@first_roll)
      @rolls.push(@second_roll)
      @score += @first_roll + @second_roll
      bonus_roll
      @rolls.push(@score)
    end
    @rolls
  end

  def bonus_roll
    if @rolls.length == 29 && (@first_roll == 10 || @first_roll + @second_roll == 10)
      last_game
      p 'you have a bonus roll'
    else
      rules
    end
  end

  def first_roll
    @first_roll = rand(0..10)
  end

  def second_roll(pins)
    mod = 10 - pins
    @second_roll = rand(0..mod)
  end

  def next_roll
    @first_roll = first_roll
    @second_roll = second_roll(@first_roll)
  end

  def last_game
    @first_roll = first_roll
    @score += @first_roll
    @rolls.push(@first_roll)
  end

  def rules
    @score += if @first_roll == 10
                next_roll
                @first_roll + @second_roll
              elsif @first_roll + @second_roll == 10 && @first_roll != 10
                next_roll
                @first_roll
              else
                next_roll
                return 0
              end
  end
end
Game.new
