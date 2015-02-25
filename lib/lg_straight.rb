class LargeStraight
  def score(roll)
    if is?(roll)
      40
    else
      0
    end
  end
  
  def is?(roll)
    roll_sorted = roll.sort
    roll_sorted == [1, 2, 3, 4, 5] || roll_sorted == [2, 3, 4, 5, 6]
  end
end