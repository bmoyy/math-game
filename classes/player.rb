class Player 

  attr_reader :name, :lives

  def initialize (name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
    puts "hi"
  end

end

player1 = Player.new("Bastien")

player1.lose_life