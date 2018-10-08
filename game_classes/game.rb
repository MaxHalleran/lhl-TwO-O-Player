class Game
  #The initializor
  attr_accessor :player1, :player2, :game_on, :turn_number
  def initialize
    @game_on = true
    @turn_number = 1
    puts "New Game"

    # Setting up the players
    puts "What is player 1's name?"
    p1name = gets.chomp
    @player1 = Player.new p1name
    puts "What is player 2's name?"
    p2name = gets.chomp
    @player2 = Player.new p2name

    @current_player = @player1
  end

  def main_game_loop
    #The main game loop happens here
    puts "Welcome to the Game!"

    while @game_on
      turn = Turn.new @current_player, @turn_number

      player_answer = gets.chomp
      player_answer = turn.answer(player_answer)

      if player_answer
        lost = @current_player.won
      else
        lost = @current_player.lost
      end

      if lost
        #end game
        @game_on = false
        winning_player = (@current_player == @player1 ? @player2 : @player1)
        puts "#{winning_player.name} wins with a score of #{winning_player.score}"
        puts "----- GAME OVER -----"
        puts "Good Bye"
      else
        puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"

        @turn_number += 1;
        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
    end

  end
end
