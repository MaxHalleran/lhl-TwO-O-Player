class Turn
  def initialize(player, turn_number)
    @player = player
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @operation = [:+, :-, :/, :*, :%].sample
    @answer = @num1.send(@operation, @num2)
    @question = "What does #{@num1} #{@operation.to_s} #{@num2} equal?"


    puts "----- TURN \##{turn_number}-----"
    puts @question
  end
  def answer(answer)
    if @answer == answer.to_i
      puts "#{@player.name}: YES ! You got it correct!"
      return true
    else
      puts "#{@player.name}: Seriously? No!"
      return false
    end
  end
end
