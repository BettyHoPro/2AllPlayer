require './player'
require './question'
require './helper'


class Game 
  attr_accessor :player1, :player2, :current_player, :non_current_player

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = rand(1..2).to_i
  end

  def start 
    puts "Game on! Wish you luck"
    check_current_player?(@current_player, @player1, @player2)
  end

end 