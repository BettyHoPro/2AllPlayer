require './player'

class Question
  attr_accessor :number1, :number2, :expect_answer, :result
  
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @expect_answer = @number1 + @number2
    @result = true
  end

  def ask 
    "What does #{@number1} plus #{self.number2} equal, expect:#{@expect_answer}  ?"
  end
  
  def answer_correct?(answer, player)
    def get_non_player(player)
      player.name == "Player 1" ? "Player 2" : "Player 1"
    end

    if answer == @expect_answer
      @result = true
      puts "YES! You are correct." 
      player.remain_blood(@result)
    else 
      @result = false
      puts "Seriously ? No!"
      player.remain_blood(@result)
      if player.blood == 0
        puts "#{get_non_player(player)} wins the game with a score of #{}/3"
        puts ""
        puts "----- GAME OVER -----"
        puts ""
        puts "Good bye!"
        exit
      end

    end
  end
end