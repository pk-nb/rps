class LearningPlayer < Player

  def initialize (opponent)
    @opponent = opponent
    @opponent_history = []
  end

  def choose
    total = @opponent_history.length
    #total = @opponent_history.values.inject(0) { |a,b| a += b }
    case @opponent_history[rand(total - 1)]
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

  def result (you, them, win_lose_or_draw)
    @opponent_history << them   
    #@opponent_history[them] += 1
  end

end


