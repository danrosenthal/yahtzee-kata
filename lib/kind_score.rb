module KindScore
  def score(roll)
    if is?(roll)
      roll.reduce(&:+)
    else
      0
    end
  end
  
  def is?(roll)
    (1..6).any? { |pips| roll.count(pips) >= kind }
  end
end