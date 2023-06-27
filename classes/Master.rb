class Master 

  def initialize
    @players = []
    @active_player = nil
  end

  def start_game

    puts "Welcome to the Two-O-Player Math Game!"
    puts ""

    puts "Player 1, please enter your name:"
    @player1 = Player.new(gets.chomp)
    @players << @player1

    puts "Player 2, please enter your name:"
    @player2 = Player.new(gets.chomp)
    @players << @player2

    puts "Let's begin!"

    self.run_round
  end
end