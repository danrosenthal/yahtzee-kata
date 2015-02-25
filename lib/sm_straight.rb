class SmallStraight
  def score(roll)
    if is?(roll)
      30
    else
      0
    end
  end
  
  def is?(roll)
    roll_sorted = roll.sort
    roll_sorted[0..3] == [1, 2, 3, 4] || roll_sorted[0..3] == [2, 3, 4, 5] || roll_sorted[1..4] == [3, 4, 5, 6] || roll_sorted[0..3] == [3, 4, 5, 6] || roll_sorted[1..4] == [1, 2, 3, 4]
  end
end