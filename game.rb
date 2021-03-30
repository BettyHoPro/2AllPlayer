require './player'
require './question'


class Game 
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = rand(1..2).to_i
  end

  def start 
    puts "Game on! Wish you luck"
    # puts "#{@current_player} #{@current_player.class}"
    if  @current_player == 1 
      puts "Player 1: your turn to play, press Y to agree"
    else
      puts "Player 2: your turn to play, press Y to agree"
    end
  end
end 