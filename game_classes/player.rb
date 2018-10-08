class Player
  attr_accessor :name, :score, :wins
  def initialize(name)
    @name = name
    @score = 3
    @wins = 0
    puts "New Player #{name}"
  end
end
