class AdaptPlayer < Player

  def initialize ( opponent )
    @opponent = opponent
  end

  def choose 
    case @opponent.downcase
    when "paperplayer"
      :scissors
    when "scissorsplayer"
      :rock
    when "rockplayer"
      :paper
    else
      [:rock, :scissors, :paper][rand(2)]
    end
  end

end
