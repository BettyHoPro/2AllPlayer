require './player'
require './question'


class Game 
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = rand(1..2)
  end

  def start 
    puts "Game on! Wish you luck"
    puts "#{@current_player}"
  end
end 