class Category

  attr_accessor :roll
  
  def initialize(*args)
    if args.length == 5
      @roll = args.sort
    elsif args.length > 5
      raise YahtzeeError, "You need to roll #{args.length - 5} fewer dice."
    else
      raise YahtzeeError, "You need to roll #{5 - args.length} more dice."
    end
  end
  
  def set_of(num)
    roll.count(num) * num
  end
  
  def of_a_kind(num)
    if (1..6).any? { |dots| roll.count(dots) >= num }
      roll.reduce(&:+)
    else
      0
    end
  end
  
  def full_house
    if roll.uniq.length <= 2 && (roll[0] == roll[1]) && (roll[-2] == roll[-1])
      25
    else
      0
    end
  end
  
  def small_straight
    if roll[0..3] == [1, 2, 3, 4] || roll[0..3] == [2, 3, 4, 5] || roll[1..4] == [3, 4, 5, 6] || roll[0..3] == [3, 4, 5, 6]
      30
    else
      0
    end
  end
  
  def large_straight
    if roll == [1, 2, 3, 4, 5] || roll == [2, 3, 4, 5, 6]
      40
    else
      0
    end
  end
  
  def yahtzee
    if roll.uniq.length == 1
      50
    else
      0
    end
  end
  
  def chance
    roll.reduce(&:+)
  end
end

class YahtzeeError < StandardError
end

