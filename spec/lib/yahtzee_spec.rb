require "spec_helper"
require "yahtzee"

describe Category do

  # aces tests
  
  it "scores aces" do
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.set_of(1)).to be == 5
    
    roll = Category.new(1, 1, 1, 4, 4)
    expect(roll.set_of(1)).to be == 3
    
    roll = Category.new(2, 2, 2, 4, 4)
    expect(roll.set_of(1)).to be == 0
  end
  
  # twos tests
  
  it "scores twos" do
    roll = Category.new(2, 2, 2, 1, 1)
    expect(roll.set_of(2)).to be == 6
    
    roll = Category.new(2, 2, 1, 4, 4)
    expect(roll.set_of(2)).to be == 4
    
    roll = Category.new(1, 3, 1, 4, 4) 
    expect(roll.set_of(2)).to be == 0
  end
  
  # threes tests
  
  it "scores threes" do 
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.set_of(3)).to be == 9
    
    roll = Category.new(3, 3, 1, 4, 4)
    expect(roll.set_of(3)).to be == 6
    
    roll = Category.new(1, 2, 1, 4, 4) 
    expect(roll.set_of(3)).to be == 0
  end
  
  # fours tests
  
  it "scores fours" do 
    roll = Category.new(4, 4, 4, 1, 1)
    expect(roll.set_of(4)).to be == 12
    
    roll = Category.new(4, 4, 1, 2, 2)
    expect(roll.set_of(4)).to be == 8
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.set_of(4)).to be == 0
  end
  
  # fives tests
  
  it "scores fives" do 
    roll = Category.new(5, 5, 5, 1, 1)
    expect(roll.set_of(5)).to be == 15
    
    roll = Category.new(5, 5, 1, 2, 2)
    expect(roll.set_of(5)).to be == 10
    
    roll = Category.new(1, 2, 1, 3, 3)
    expect(roll.set_of(5)).to be == 0
  end
  
  # sixes tests
  
  it "scores sixes" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.set_of(6)).to be == 18
    
    roll = Category.new(6, 6, 1, 2, 2)
    expect(roll.set_of(6)).to be == 12
    
    roll = Category.new(1, 2, 1, 3, 3)
    expect(roll.set_of(6)).to be == 0
  end
  
  # three of a kind tests
  
  it "scores three of a kind" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.of_a_kind(3)).to be == 20
    
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.of_a_kind(3)).to be == 11
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.of_a_kind(3)).to be == 0
  end
  
  # four of a kind tests
  
  it "scores four of a kind" do 
    roll = Category.new(6, 6, 6, 6, 1)
    expect(roll.of_a_kind(4)).to be == 25
    
    roll = Category.new(3, 3, 3, 3, 1)
    expect(roll.of_a_kind(4)).to be == 13
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.of_a_kind(4)).to be == 0
  end
  
  # full house tests
  
  it "scores a full house" do 
    roll = Category.new(6, 6, 6, 4, 4)
    expect(roll.full_house).to be == 25
    
    roll = Category.new(3, 3, 2, 2, 2)
    expect(roll.full_house).to be == 25
    
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.full_house).to be == 25
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.full_house).to be == 0
  end
  
  # small straight tests
  
  it "scores a small straight" do 
    roll = Category.new(1, 2, 3, 4, 6)
    expect(roll.small_straight).to be == 30
    
    roll = Category.new(2, 3, 4, 5, 5)
    expect(roll.small_straight).to be == 30
    
    roll = Category.new(3, 4, 5, 6, 6)
    expect(roll.small_straight).to be == 30
    
    roll = Category.new(1, 2, 3, 5, 5)
    expect(roll.small_straight).to be == 0
  end
  
  # large straight tests
  
  it "scores a large straight" do 
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.large_straight).to be == 40
    
    roll = Category.new(2, 3, 4, 5, 6)
    expect(roll.large_straight).to be == 40
    
    roll = Category.new(1, 2, 3, 4, 4)
    expect(roll.large_straight).to be == 0
  end
  
  # yahtzee tests
  
  it "scores a yahtzee" do 
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.yahtzee).to be == 50
    
    roll = Category.new(2, 2, 2, 2, 2)
    expect(roll.yahtzee).to be == 50
    
    roll = Category.new(1, 2, 3, 4, 4)
    expect(roll.yahtzee).to be == 0
  end
end