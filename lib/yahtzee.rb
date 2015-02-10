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

  # category methods
  def aces?; roll.include?(1); end
  def twos?; roll.include?(2); end
  def threes?; roll.include?(3); end
  def fours?; roll.include?(4); end
  def fives?; roll.include?(5); end
  def sixes?; roll.include?(6); end
  def three_of_a_kind?; look_for_sets_of(3); end
  def four_of_a_kind?; look_for_sets_of(4); end
  def full_house?; roll.uniq.length <= 2 && (roll[0] == roll[1]) && (roll[-2] == roll[-1]); end
  def small_straight?; roll[0..3] == [1, 2, 3, 4] || roll[0..3] == [2, 3, 4, 5] || roll[1..4] == [3, 4, 5, 6] || roll[0..3] == [3, 4, 5, 6]; end
  def large_straight?; roll == [1, 2, 3, 4, 5] || roll == [2, 3, 4, 5, 6]; end
  def yahtzee?; roll.min == roll.max; end
  
  # scoring methods
  def score_aces!; aces? ? count_em_up(1) : 0; end
  def score_twos!; twos? ? count_em_up(2) : 0; end
  def score_threes!; threes? ? count_em_up(3) : 0; end
  def score_fours!; fours? ? count_em_up(4) : 0; end
  def score_fives!; fives? ? count_em_up(5) : 0; end
  def score_sixes!; sixes? ? count_em_up(6) : 0; end
  def score_three_of_a_kind!; three_of_a_kind? ? add_em_up : 0; end
  def score_four_of_a_kind!; four_of_a_kind? ? add_em_up : 0; end
  def score_full_house!; full_house? ? 25 : 0; end
  def score_small_straight!; small_straight? ? 30 : 0 end
  def score_large_straight!; large_straight? ? 40 : 0; end
  def score_yahtzee!; yahtzee? ? 50 : 0; end
  
  private
  
  def add_em_up; roll.reduce(:+); end 
  def count_em_up(num); roll.count(num) * num; end
  def look_for_sets_of(amt)
    (1..6).any? { |dots| roll.count(dots) >= amt }
  end
end

class YahtzeeError < StandardError
end

