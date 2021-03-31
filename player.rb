require "./game"

class Player 
  attr_accessor :name, :blood
  # puts self
  def initialize(n)
    @name = n
    @blood = 3
  end


  def remain_blood(correct)
    # puts self.name
    if !correct
      @blood -= 1
    end

 
  end
end

# puts remian_blood(false)