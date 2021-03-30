require "./game"

class Player 
  attr_accessor :name, :blood, :current_player

  def initialize(n)
    @name = n
    @blood = 3
    @current_player = true
  end

  def remain_blood

end