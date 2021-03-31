require './game'
require './player'
require './question'

##--- Game helpers ---## ---> these twos can just be a turn class itself 
def check_current_player?(current_player, player1, player2)
  question = Question.new

  puts ""
  puts "----- NEW TURN -----"
  if current_player == 1 
    @non_current_player = 2
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    puts "#{question.answer_correct?(answer, player1)}."
    switch_player?(@current_player, player1, player2)
  else
    @non_current_player = 1
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    question.answer_correct?(answer, player2)
    switch_player?(@current_player, player1, player2)
  end
  
end


def switch_player?(current_player, player1, player2)

  puts "P1: #{player1.blood}/3 vs P2: #{player2.blood}/3"
  if current_player == 1 
    @current_player = 2
    check_current_player?(@current_player, player1, player2)
  else 
    @current_player = 1
    check_current_player?(@current_player, player1, player2)
  end
end 
