require './game'
require './player'
require './question'

##--- Game helpers ---##
def check_current_player?(current_player)
  question = Question.new

  puts ""
  puts "----- NEW TURN -----"
  if current_player == 1 
    @non_current_player = 2
    # puts @current_player
    # puts "#{@non_current_player} is not playing"
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    puts "#{question.answer_correct?(answer)}."
    switch_player?(@current_player, @non_current_player)
  else
    @non_current_player = 1
    # puts @current_player
    # puts "#{@non_current_player} is not playing"
    puts "Player #{@current_player}: #{question.ask}"
    answer = gets.chomp.to_i
    puts "#{question.answer_correct?(answer)}."
    switch_player?(@current_player, @non_current_player)
  end
  
end


def switch_player?(current_player, not_player)
  # puts "Current player #{current_player}"
  # puts "Not player #{not_player}"
 
  puts "P1: #{player1.blood}/3 vs P2: #{player2.blood}/3"
  if current_player == 1 
    @current_player = 2
    check_current_player?(@current_player)
  else 
    @current_player = 1
    check_current_player?(@current_player)
  end
end 


# def result_blood 
#   if question.result
#     remain_blood( win = true)
# end
