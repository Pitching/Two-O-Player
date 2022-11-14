class Player
  attr_accessor :player, lives

  def newPlayer(player)
    @player = player
    @lives = 3
  end

  def remainingLives
    @lives -= 1
  end
end