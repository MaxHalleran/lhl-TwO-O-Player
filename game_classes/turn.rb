class Turn
  def initialize
    @question = "stuff"
    puts "----- NEW TURN -----"
  end
  def answer(answer)
    if @question == answer
      puts "#{player}: YES ! You got it correct!"
  elsif @question == answer
      puts "#{player}: Seriously? No!"
    end
    puts "P1: Score vs P2: Score"
  end
end
