class Question
  
  def initialize()
    @numbers = 2.times.map{Random.new.rand(20)}
    @question = "What does #{@numbers[0]} plus #{@numbers[1]} equal?"
    @answer = @numbers[0] + @numbers[1]
  end

  def ask_question()
    puts @question
  end

  def correct?(guess)
    guess == @answer
  end

end