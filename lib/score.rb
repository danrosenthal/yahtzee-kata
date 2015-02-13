class Score
  
  attr_accessor :roll_score
  
  def initialize(*args)
    roll = args.sort
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
    #sixes(roll)
    #three_kind(roll)
    #four_kind(roll)
    #full_house(roll)
    #sm_straight(roll)
    #lg_straight(roll)
    #yahtzee(roll)
    #chance(roll)
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
end