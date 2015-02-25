class FullHouse
  def score(roll)
    if is?(roll)
      25
    else
      0
    end
  end
  
  def is?(roll)
    roll_sorted = roll.sort
    roll_sorted[0] != nil && roll_sorted.uniq.length <= 2 && roll_sorted[0] == roll_sorted[1] && roll_sorted[-2] == roll_sorted[-1]
  end
end