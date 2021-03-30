require './game'
require './player'
require './question'

##--- Game helpers ---##
def check_current_player?(current_player)
  question = Question.new

  puts ""
  puts "----- NEW TURN -----"
  if current_player == 1 
    
    puts @current_player
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    puts "#{question.answer_correct?(answer)}. "
    switch_player?(@current_player)
  else
    puts @current_player
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    puts "#{question.answer_correct?(answer)}. "
    switch_player?(@current_player)
  end
  
end


def switch_player?(current_player)
  puts "P1: #{player1.blood}/3 vs P2: #{player2.blood}/3"
  if current_player == 1 
    @current_player = 2
    check_current_player?(@current_player)
  else 
    @current_player = 1
    check_current_player?(@current_player)
  end
end 

