require './player.rb'
require './question.rb'

class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2]
  end

  # rotate player every round
  def next_round
    @players.rotate!
  end

  def game_over?
    @player1.lost_game? || @player2.lost_game?
  end

  def display_both_scores
    puts "#{@player1.display_score} vs #{@player2.display_score}"
  end

  def declare_winner
    winner = @player1.lost_game? ? @player2 : @player1

    puts "#{winner.name} wins with a score of #{winner.life}/#{Player::LIFE_TOTAL}"  
  end

  # calculates the answer to the question
  # def answer
  #   @answer = question.num1 + question.num2
  # end

  # asks for user input
  def player_answer
    print '> '
    player_answer = gets.chomp
    player_answer
  end

  # # checks and returns true if the answer provided by user is correct
  # def correct_answer?
  #   # calls player_answer method (do i need self. here?)
  #   # player_answer
    
  #   # do i need self. here?
  #   answer == @player_answer.to_i
  # end

  # def check_answer(player)
  #   if correct_answer?
  #     puts "#{player}: YES! You are correct"
  #   elsif
  #     puts "#{player}: Seriously? No!"
  #   end
  # end



  def play
    until (game_over?) do
      player_up = @players.first

      question = Question.new

      puts question.ask(player_up.name)

      if question.correct_answer?(player_answer)
        puts "#{player_up.name}: YES! You are correct"
      else
        puts "#{player_up.name}: Seriously? No!"
        player_up.update_life
      end

      display_both_scores
      
      if !game_over?
        next_round
        puts '----- NEW TURN -----'
      end
    end
    puts '----- GAME OVER -----'

    declare_winner
  end
end


# p game.player1.life
# game.update_life(game.player1)

# p game.player1
# p game.player2
# puts ("-------------------------------------")

# game.display_score
# puts ("-------------------------------------")


# game.player_answer
# puts game.correct_answer?("Player 22")
# puts ("-------------------------------------")

# game.next_round
# puts ("-------------------------------------")

# p game.game_over?
# puts ("-------------------------------------")

# game.check_answer("Player 1")

