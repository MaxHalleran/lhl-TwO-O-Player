class Game
  #The initializor
  attr_accessor :player1, :player2
  def initialize
    @game_on = true
    puts "New Game"
    
    # Setting up the players
    puts "What is player 1's name?"
    p1name = gets.chomp
    @player1 = Player.new p1name
    puts "What is player 2's name?"
    p2name = gets.chomp
    @player2 = Player.new p2name

    puts "#{player1.name}, #{player2.name}"
    @current_player = @player1
  end

  def main_game_loop
    #The main game loop happens here
    puts "Welcome to the Game!"

    while @game_on
      turn = Turn.new

      puts @player1.score += 1
      if @player1.score > 1000
        @game_on = false
      end
    end

  end
end
