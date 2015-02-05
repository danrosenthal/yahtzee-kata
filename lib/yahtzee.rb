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
	  if roll.include?(1)
		  @score = roll.count(1) * 1
      puts score
      true
    else
      @score = 0
      puts score
      false
    end
	end

	def twos?
	end

	def threes?
	end

	def fours?
	end

	def fives?
	end

	def sixes?
	end

	# Lower section categories

	def three_of_a_kind?
	end

	def four_of_a_kind?
	end

	def full_house?
	end

	def small_straight?
	end

	def large_straight?
	end

	def yahtzee?
	end
	
	def to_s
	end
	
end