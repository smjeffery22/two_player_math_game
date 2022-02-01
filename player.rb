class Player
  LIFE_TOTAL = 3

  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = LIFE_TOTAL
    puts self.display_score
  end

  def display_score
    "#{@name}: #{@life}/#{LIFE_TOTAL}"
  end

  def update_life
    @life -= 1
  end

  def lost_game?
    @life == 0
  end
end

# player1 = Player.new('Player 1')

# p player1.life
# p player1.update_life('false')