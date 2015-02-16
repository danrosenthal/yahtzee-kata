class Score
  
  attr_accessor :roll_score
  
  def initialize(roll)
    roll = roll.sort
    @roll_score = {
      :aces => 0,
      :twos => 0,
      :threes => 0,
      :fours => 0,
      :fives => 0,
      :sixes => 0,
      :three_kind => 0,
      :four_kind => 0,
      :full_house => 0,
      :sm_straight => 0,
      :lg_straight => 0,
      :yahtzee => 0,
      :chance => 0
    }
    aces(roll)
    twos(roll)
    threes(roll)
    fours(roll)
    fives(roll)
    sixes(roll)
    three_kind(roll)
    four_kind(roll)
    full_house(roll)
    sm_straight(roll)
    lg_straight(roll)
    yahtzee(roll)
    chance(roll)
  end
  
  def aces(roll)
    roll_score[:aces] = (roll.count(1) * 1) if roll.include?(1)
  end
  
  def twos(roll)
    roll_score[:twos] = (roll.count(2) * 2) if roll.include?(2)
  end
  
  def threes(roll)
    roll_score[:threes] = (roll.count(3) * 3) if roll.include?(3)
  end
  
  def fours(roll)
    roll_score[:fours] = (roll.count(4) * 4) if roll.include?(4)
  end
  
  def fives(roll)
    roll_score[:fives] = (roll.count(5) * 5) if roll.include?(5)
  end
  
  def sixes(roll)
    roll_score[:sixes] = (roll.count(6) * 6) if roll.include?(6)
  end
  
  def three_kind(roll)
    roll_score[:three_kind] = roll.reduce(&:+) if (1..6).any? { |pips| roll.count(pips) >= 3 }
  end
  
  def four_kind(roll)
    roll_score[:four_kind] = roll.reduce(&:+) if (1..6).any? { |pips| roll.count(pips) >= 4 }
  end
  
  def full_house(roll)
    roll_score[:full_house] = 25 if roll.uniq.length <= 2 && roll[0] == roll[1] && roll[-2] == roll[-1]
  end
  
  def sm_straight(roll)
    roll_score[:sm_straight] = 30 if roll[0..3] == [1, 2, 3, 4] || roll[0..3] == [2, 3, 4, 5] || roll[1..4] == [3, 4, 5, 6] || roll[0..3] == [3, 4, 5, 6]
  end
  
  def lg_straight(roll)
    roll_score[:lg_straight] = 40 if roll == [1, 2, 3, 4, 5] || roll == [2, 3, 4, 5, 6]
  end
  
  def yahtzee(roll)
    roll_score[:yahtzee] = 50 if roll.uniq.length == 1
  end
  
  def chance(roll)
    roll_score[:chance] = roll.reduce(&:+)
  end
end
