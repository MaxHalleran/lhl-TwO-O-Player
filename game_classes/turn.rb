class Turn
  def initialize(player, turn_number)
    @player = player
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operation = %i[+ - / * %].sample
    @answer = @num1.send(@operation, @num2)
    @question = "What does #{@num1} #{@operation} #{@num2} equal?"

    puts "----- TURN \##{turn_number}-----"
    puts @question
  end

  def answer(answer)
    if @answer == answer.to_i
      puts "#{@player.name}: YES ! You got it correct!"
      true
    else
      puts "#{@player.name}: Seriously? No!"
      false
    end
  end
end
