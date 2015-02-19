require '../lib/dice.rb'
require '../lib/category.rb'

class Game
  attr_accessor :number_of_turns
  def initialize
    @number_of_turns = 0
    Turn.new
  end
end

class Turn
  def initialize
    number_of_rolls = 0
    roll = []
    turn_controller(roll, number_of_rolls)
  end
  
  def turn_controller(roll, number_of_rolls)
    if number_of_rolls == 0 # first roll
      first_roll()
    elsif number_of_rolls == 1 # second roll
      new_roll(roll, 2)
    elsif number_of_rolls == 2 # third and final roll
      new_roll(roll, 3)
    else
      choose_score(roll)
    end
  end
  
  private
  
  def roll_the_dice(number_of_dice)
    Dice.new(number_of_dice).roll
  end
  
  def score_the_roll(roll)
    roll.sort!
    Category.new(roll).roll_score
  end

  def reroll_dice(roll, input)
    dice_to_keep = input.split(",").map { |s| s.to_i }
    dice_to_keep.concat(roll_the_dice(5 - dice_to_keep.length))
  end
  
  def choose_score(roll)
    print "Your final roll is #{roll}.\nYou have the following potential scores:\n"
    score = score_the_roll(roll)
    puts score
    
    print "Choose which category you want to apply your score to.\nEx: to score aces, type: aces.\n"
    
    print "> "
    input = $stdin.gets.chomp
    category = input.to_sym
    category_score = score[category]
    
    print "Your category is #{category} and your score is #{category_score}."
  end
  
  def first_roll
    puts "Welcome to this game of solitaire Yahtzee.\nType 'roll' to roll the dice."
    
    print "> "
    input = $stdin.gets.chomp
    
    if input == "roll"
      roll = roll_the_dice(5)
      turn_controller(roll, 1)
    else
      puts "You typed #{input}. I guess you don't want to play. Goodbye."
      exit
    end
  end
  
  def new_roll(roll, number_of_rolls)
    puts "Your roll is #{roll}. Nice job.\nWhat dice would you like to keep?\nPlease enter the number on each die separated by a comma.\nEx: to keep all sixes in a roll, type: 6, 6, 6.\nIf you like your roll, type: all."
  
    print "> "
    input = $stdin.gets.chomp
    
    if input == "all"
      choose_score(roll)
    else
      roll = reroll_dice(roll, input)
      turn_controller(roll, number_of_rolls)
    end
  end
end