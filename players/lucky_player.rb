class AnotherPlayer < Player
  
  def initialize(opponent)
    @next_move = [:rock, :paper, :scissors][rand(2)]
  end

  def choose
    @next_move
  end

  def result (you, them, win_lose_or_draw)
     case win_lose_or_draw
     when :win
      @next_move = you
     when :lose
      @next_move = them
     when :draw
      @next_move = them
     else
      @next_move [:rock, :paper, :scissors][rand(2)]

    end
  end

end
