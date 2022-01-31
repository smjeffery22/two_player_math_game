# Nouns for Classes
  # Game
    # keeps track of game turns
    # determines current player
    # contains the main game loop
    # determines winner
    # variables: players, life
    # methods: numbers?, check_answer, display_scores, game_over?, declare_winner
  # Player
    # create players
    # keeps track of the scores/lives
    # variables: player, score
    # methods: 
  #Question
    # creates questions and checks answers
    # reads user inputs and outputs 


class Player
  def initialize(player)
    @player = player
  end
end

player1 = Player.new('Player 1')
p player1

player2 = Player.new('Player 2')
p player2