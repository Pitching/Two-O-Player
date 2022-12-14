require "./player.rb"

class Question
  attr_reader :first, :second

  def initialize
    @first = rand(1..20)
    @second = rand(1..20)
  end

  def oneQuestion(player)
    puts "#{player.name}: What is #{@first} + #{@second}?"
    answer = gets.chomp.to_i
    if (answer != (@first + @second))
      player.subtractLife
      puts "#{player.name}: Seriously? No!"
    else
      puts "#{player.name}: YES! You are correct."
    end
  end

end