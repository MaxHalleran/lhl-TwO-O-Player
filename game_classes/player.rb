class Player
  attr_accessor :name, :score
  def initialize(name)
    @name = name
    puts "New Player #{name}"
  end
end
