class Question
  attr_accessor :number1, :number2, :expect_answer
  
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @expect_answer = @number1 + @number2
  end

  def ask 
    "What does #{@number1} plus #{self.number2} equal, expect:#{@expect_answer}  ?"
  end
  
  def answer_correct?(answer)
    if answer == @expect_answer
      "YES! You are correct."
    else 
      "Seriously ? No!"
    end
  end
end