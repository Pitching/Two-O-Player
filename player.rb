class Player
  attr_accessor :player, :lives

  def initialize(player)
    @player = player
    @lives = 3
  end

  def subtractLife
    @lives -= 1
  end
end