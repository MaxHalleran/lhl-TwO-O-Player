class Game
  #The initializor
  attr_accessor :player1, :player2
  def initialize
    puts "New Game"

    # Setting up the players
    puts "What is player 1's name?"
    p1name = gets.chomp
    @player1 = Player.new p1name

    puts "What is player 2's name?"
    p2name = gets.chomp
    @player2 = Player.new p2name

    puts "#{player1.name}, #{player2.name}"
  end
end
