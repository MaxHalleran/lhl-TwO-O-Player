class Player
  attr_accessor :name, :score, :wins
  def initialize(player_number)
    puts "What is player #{player_number}'s name?"
    @name = gets.chomp
    @score = 3
    @wins = 0
  end

  def won
    @wins += 1
  end

  def lost
    @score -= 1
    @score == 0
  end
end
