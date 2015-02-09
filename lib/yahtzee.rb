class Category

  attr_accessor :roll, :score
  def initialize(d1, d2, d3, d4, d5)
    @roll = [d1, d2, d3, d4, d5].sort
    @score = 0
  end

  # Upper section categories

  def aces?; roll.include?(1); end

  def twos?; roll.include?(2); end

  def threes?; roll.include?(3); end

  def fours?; roll.include?(4); end

  def fives?; roll.include?(5); end

  def sixes?; roll.include?(6); end

  # Lower section categories

  def three_of_a_kind?
    amt = 3
    if call_the_roll(1, amt)
      true
    elsif call_the_roll(2, amt)
      true
    elsif call_the_roll(3, amt)
      true
    elsif call_the_roll(4, amt)
      true
    elsif call_the_roll(5, amt)
      true
    elsif call_the_roll(6, amt)
      true
    else
      false
    end
  end

  def four_of_a_kind?
    amt = 4
    if call_the_roll(1, amt)
      true
    elsif call_the_roll(2, amt)
      true
    elsif call_the_roll(3, amt)
      true
    elsif call_the_roll(4, amt)
      true
    elsif call_the_roll(5, amt)
      true
    elsif call_the_roll(6, amt)
      true
    else
      false
    end
  end

  def full_house?
    ((roll[0] == roll[2]) && (roll[3] == roll[4])) || ((roll[0] == roll[1]) && (roll[2] == roll[4]))
  end

  def small_straight?
  end

  def large_straight?
  end

  def yahtzee?
  end
  
  def to_s
  end
  
  # upper section scoring methods
  
  def score_of_aces!
    @score = count_em_up(1) if aces?
  end
  
  def score_of_twos!
    @score = count_em_up(2) if twos?
  end
  
  def score_of_threes!
    @score = count_em_up(3) if threes?
  end
  
  def score_of_fours!
    @score = count_em_up(4) if fours?
  end
  
  def score_of_fives!
    @score = count_em_up(5) if fives?
  end
  
  def score_of_sixes!
    @score = count_em_up(6) if sixes?
  end
  
  # lower section scoring methods
  
  def score_of_three_of_a_kind!
    @score = add_them_up if three_of_a_kind?
  end
  
  def score_of_four_of_a_kind!
    @score = add_them_up if four_of_a_kind?
  end
  
  private
  
  def add_them_up; roll.reduce(:+); end
  
  def count_em_up(num); roll.count(num) * num; end
  
  def call_the_roll(num, amt); roll.count(num) >= amt; end
  
end