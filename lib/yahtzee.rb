class Category

  attr_accessor :roll, :d1, :d2, :d3, :d4, :d5, :score
  def initialize(d1, d2, d3, d4, d5)
    @roll = [d1, d2, d3, d4, d5].sort
    @d1 = d1
    @d2 = d2
    @d3 = d3
    @d4 = d4
    @d5 = d5
    @score = 0
  end

  # Upper section categories

  def aces?
    roll.include?(1)
  end

  def twos?
    roll.include?(2)
  end

  def threes?
    roll.include?(3)
  end

  def fours?
    roll.include?(4)
  end

  def fives?
    roll.include?(5)
  end

  def sixes?
    roll.include?(6)
  end

  # Lower section categories

  def three_of_a_kind?
    if roll.count(1) >= 3
      true
    elsif roll.count(2) >= 3
      true
    elsif roll.count(3) >= 3
      true
    elsif roll.count(4) >= 3
      true
    elsif roll.count(5) >= 3
      true
    elsif roll.count(6) >= 3
      true
    else
      false
    end
  end

  def four_of_a_kind?
    if roll.count(1) >= 4
      true
    elsif roll.count(2) >= 4
      true
    elsif roll.count(3) >= 4
      true
    elsif roll.count(4) >= 4
      true
    elsif roll.count(5) >= 4
      true
    elsif roll.count(6) >= 4
      true
    else
      false
    end
  end

  def full_house?
    ((d1 == d2 && d2 == d3) && (d4 == d5)) || ((d1 == d2) && (d3 == d4 && d4 == d5))
  end

  def small_straight?
  end

  def large_straight?
  end

  def yahtzee?
  end
  
  def to_s
  end
  
  def score_of_aces!
    if aces?
      @score = roll.count(1) * 1
    else
      @score = 0
    end
  end
  
  def score_of_twos!
    if twos?
      @score = roll.count(2) * 2
    else
      @score = 0
    end
  end
  
  def score_of_threes!
    if threes?
      @score = roll.count(3) * 3
    else
      @score = 0
    end
  end
  
  def score_of_fours!
  end
  
  def score_of_fives!
  end
  
  def score_of_sixes!
  end
  
  private
  
  def add_them_up
    d1 + d2 + d3 + d4 + d5
  end
  
end