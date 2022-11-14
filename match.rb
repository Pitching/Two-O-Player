class Match
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @turn = @player1
  end

  def startGame
    while @turn.lives > 0
      puts "#{Question.new.oneQuestion(@turn)}"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

      if (@turn.lives == 0 && @turn == @player1)
        puts "Player 2 wins with a score of #{@player2.lives}/3"
        puts "-----  GAME OVER  -----"
        return
      elsif (@turn.lives == 0 && @turn == @player2)
        puts "Player 1 wins with a score of #{@player1.lives}/3"
        puts "-----  GAME OVER  -----"
        return
      end
      if (@turn == @player1)
        @turn == @player2
      else
        @turn == @player1
      end
      puts "-----  NEW TURN  -----"
    end
  end
end