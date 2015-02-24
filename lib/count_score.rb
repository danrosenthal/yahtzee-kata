module CountScore
  def score(roll)
    roll.count(pip) * pip
  end
end
