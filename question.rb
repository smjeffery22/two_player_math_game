class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask(player)
    "#{player}: What does #{@num1} plus #{@num2} equal?"
  end

  def answer
    answer = @num1 + @num2
  end

  # checks and returns true if the answer provided by user is correct
  def correct_answer?(player_answer)
    # calls player_answer method (do i need self. here?)
    # player_answer
    
    # do i need self. here?
    answer == player_answer.to_i
  end
end

# question1 = Question.new
# puts question1.num1
# puts question1.num2
# puts question1.ask("Player 1")