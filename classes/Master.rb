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

    puts @player1.name
    
    puts "Let's begin!"

    self.run_round
  end

  def run_round
    self.switch_player
    puts "----- NEW TURN -----"

    question = Question.new
    puts "#{@active_player.name}:"
    question.ask_question

    guess = gets.chomp.to_i

    if !question.correct?(guess)
      @active_player.lose_life
      puts "That's Wrong!"
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    else
      puts "That's Correct!"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end

    if @player1.lives == 0 || @player2.lives == 0
      self.end_game
    else
      self.run_round
    end
  end

  def switch_player
    @active_player == @player1 ? @active_player = @player2 : @active_player = @player1
  end

  def end_game
    puts ""
    if @player1.lives == 0
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3!"
    elsif @player2.lives == 0
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3!"
    end

    puts "----- GAME OVER -----"

  end

end