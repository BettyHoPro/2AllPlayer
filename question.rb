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
  
  def answer_correct?(answer)
    if answer == @expect_answer
      @result = true
      # @current_player.count_lives( win = true )
      "YES! You are correct."
      # self.player.count_lives( win = true )
    else 
      @result = false
      "Seriously ? No!"
      # self.player.count_lives( win = false )
    end
  end

  # def result?(result)
  #   if result 
  #     "testing : correct result"
  #     # @current_player.blood - 0
  #     # "#{@current_player.blood}"
  #   else 
  #     "testing : false result"
  #     # @current_player.blood - 1
  #     # "#{@current_player.blood}"
  #   end
  # end
  
end