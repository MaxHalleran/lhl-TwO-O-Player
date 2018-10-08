class Player
  attr_accessor :name, :score, :wins
  def initialize(name)
    @name = name
    @score = 3
    @wins = 0
  end

  def won
    @wins += 1
    false
  end

  def lost
    @score -= 1
    if @score == 0
      true
    else
      false
    end
  end

end
