class Yahtzee
  def score(roll)
    if is?(roll)
      50
    else
      0
    end
  end
  
  def is?(roll)
    roll.uniq.length == 1
  end
end