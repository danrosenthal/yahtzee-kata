module CountScore
  def score(roll)
    roll.count(pips) * pips
  end
end
