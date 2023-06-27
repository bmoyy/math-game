class Player 

  def initialize (name)
    @name = name
    @lives = 3
  end

  def lose_lives 
    @lives -= 1
  end
  
end
