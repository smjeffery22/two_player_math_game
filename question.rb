class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask
    "What does #{@num1} plus #{@num2} equal?"
  end
end

# question1 = Question.new
# puts question1.num1
# puts question1.num2
# puts question1.ask