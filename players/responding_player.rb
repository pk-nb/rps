class RespondingPlayer < Player

  def choose
    case @last_opponent_move
    when :rock
      :paper
    when :scissors
      :rock
    when :paper
      :scissors
    else 
      [:rock, :paper, :scissors][rand(2)] 
    end
  end

  def result(you, them, win_lose_or_draw)
    @last_opponent_move = them
  end

end
