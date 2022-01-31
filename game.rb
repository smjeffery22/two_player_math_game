require './player.rb'
require './question.rb'

class Game
  attr_accessor :player_answer, :answer
  attr_reader :player1, :player2, :question
  attr_writer :answer

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @player_answer
    @question = Question.new
    @answer
  end

  # calculates the answer to the question
  def answer
    @answer = question.num1 + question.num2
  end

  # asks for user input
  def player_answer
    print '> '
    @player_answer = gets.chomp
    @player_answer
  end

  # checks and returns true if the answer provided by user is correct
  def correct_answer?
    puts question.ask
    
    # calls player_answer method (do i need self. here?)
    self.player_answer
    
    # do i need self. here?
    self.answer == @player_answer.to_i
  end
end

game = Game.new

puts game.player1.name
puts game.player2.name
puts ("-------------------------------------")

# game.player_answer
puts game.correct_answer?
puts ("-------------------------------------")
