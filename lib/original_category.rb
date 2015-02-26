class Category
  
  attr_reader :roll_score
  
  def initialize(roll)
    roll.sort!
    
    @roll_score = {}
    
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
    if roll.include?(1)
      roll_score[:aces] = (roll.count(1) * 1)
    else
      roll_score[:aces] = 0
    end
  end
  def twos(roll)
    if roll.include?(2)
      roll_score[:twos] = (roll.count(2) * 2)
    else
      roll_score[:twos] = 0
    end
  end
  def threes(roll)
    if roll.include?(3)
      roll_score[:threes] = (roll.count(3) * 3)
    else
      roll_score[:threes] = 0
    end
  end
  def fours(roll)
    if roll.include?(4)
      roll_score[:fours] = (roll.count(4) * 4)
    else
      roll_score[:fours] = 0
    end
  end
  def fives(roll)
    if roll.include?(5)
      roll_score[:fives] = (roll.count(5) * 5)
    else
      roll_score[:fives] = 0
    end
  end
  def sixes(roll)
    if roll.include?(6)
      roll_score[:sixes] = (roll.count(6) * 6)
    else
      roll_score[:sixes] = 0
    end
  end
  def three_kind(roll)
    if (1..6).any? { |pips| roll.count(pips) >= 3 }
      roll_score[:three_kind] = roll.reduce(&:+)
    else
      roll_score[:three_kind] = 0
    end
  end
  def four_kind(roll)
    if (1..6).any? { |pips| roll.count(pips) >= 4 }
      roll_score[:four_kind] = roll.reduce(&:+)
    else
      roll_score[:four_kind] = 0
    end
  end
  def full_house(roll)
    if roll.uniq.length == 2 && roll[0] == roll[1] && roll[-2] == roll[-1]
      roll_score[:full_house] = 25
    else
      roll_score[:full_house] = 0
    end
  end
  def sm_straight(roll)
    if roll[0..3] == [1, 2, 3, 4] || roll[0..3] == [2, 3, 4, 5] || roll[1..4] == [3, 4, 5, 6] || roll[0..3] == [3, 4, 5, 6]
      roll_score[:sm_straight] = 30
    else
      roll_score[:sm_straight] = 0
    end
  end
  def lg_straight(roll)
    if roll == [1, 2, 3, 4, 5] || roll == [2, 3, 4, 5, 6]
      roll_score[:lg_straight] = 40
    else
      roll_score[:lg_straight] = 0
    end
  end
  def yahtzee(roll)
    if roll.uniq.length == 1
      roll_score[:yahtzee] = 50
    else
      roll_score[:yahtzee] = 0
    end
  end
  def chance(roll)
    roll_score[:chance] = roll.reduce(&:+)
  end
end