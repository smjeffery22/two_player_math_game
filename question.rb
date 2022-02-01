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
    answer == player_answer.to_i
  end
end