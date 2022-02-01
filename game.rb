require './player.rb'
require './question.rb'

class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2]
  end

  # asks for user input
  def player_answer
    print '> '
    player_answer = gets.chomp
    player_answer
  end

  # rotateㄴ player every round
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