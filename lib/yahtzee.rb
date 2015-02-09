# Yahtzee Kata Outline
# Lets start by thinking about all the nouns that are used to 
# describe scoring a game of Yahtzee. 
# 
# * Game
# * Dice
# * Round
# * Player
# * Category
# * Score
# 
# The system we are creating doesn’t need to create the entire game, 
# it just needs to give the score for one roll. So, given a roll 
# and a category, the system should output the score for the roll 
# placed in that category.

# Based on this idea, we would want to have a Category class that 
# takes in the dice on a roll as arguments, and contains methods 
# that define each of the categories and evaluate the roll based on 
# those categories. It should then return a score.

# So, let’s do some dummy code.

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
      @score = add_them_up
      true
    elsif roll.count(2) >= 3
      @score = add_them_up
      true
    elsif roll.count(3) >= 3
      @score = add_them_up
      true
    elsif roll.count(4) >= 3
      @score = add_them_up
      true
    elsif roll.count(5) >= 3
      @score = add_them_up
      true
    elsif roll.count(6) >= 3
      @score = add_them_up
      true
    else
      @score = 0
      false
    end
  end

  def four_of_a_kind?
    if roll.count(1) >= 4
      @score = add_them_up
      true
    elsif roll.count(2) >= 4
      @score = add_them_up
      true
    elsif roll.count(3) >= 4
      @score = add_them_up
      true
    elsif roll.count(4) >= 4
      @score = add_them_up
      true
    elsif roll.count(5) >= 4
      @score = add_them_up
      true
    elsif roll.count(6) >= 4
      @score = add_them_up
      true
    else
      @score = 0
      false
    end
  end

  def full_house?
    if ((d1 == d2 && d2 == d3) && (d4 == d5)) || ((d1 == d2) && (d3 == d4 && d4 == d5))
      @score = 25
      true
    else
      @score = 0
      false
    end
  end

  def small_straight?
  end

  def large_straight?
  end

  def yahtzee?
  end
  
  def to_s
  end
  
  private
  
  def add_them_up
    d1 + d2 + d3 + d4 + d5
  end
  
end