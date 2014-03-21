class PaperPlayer < Player

  def initialize ( opponent )
    @oppoent = opponent
  end

  def choose
    :paper
  end

  def result (you, them, win_lose_or_draw)

  end

end
