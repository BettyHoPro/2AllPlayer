require './game'
require './player'
require './question'

##--- Game helpers ---##
def check_current_player?(current_player)
  if current_player == 1 
    puts @current_player
    puts "Player 1: your turn to play, press Y to agree"
    name = gets.chomp
    puts "Welcome to \"Ruby land\", #{name}. Hope you enjoy your stay (and never leave!)"
    switch_player?(@current_player)
  else
    puts @current_player
    puts "Player 2: your turn to play, press Y to agree"
    name = gets.chomp
    puts "Welcome to \"Ruby land\", #{name}. Hope you enjoy your stay (and never leave!)"
    switch_player?(@current_player)
  end
end


def switch_player?(current_player)
  if current_player == 1 
    @current_player = 2
    check_current_player?(@current_player)
  else 
    @current_player = 1
    check_current_player?(@current_player)
  end
end 

