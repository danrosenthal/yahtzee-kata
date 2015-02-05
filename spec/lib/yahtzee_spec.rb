require "spec_helper"
require "yahtzee"

describe Category do

  it "is aces" do 
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.aces?).to be true
    expect(roll.score).to be == 5
    
    roll = Category.new(1, 1, 1, 4, 4)
    expect(roll.aces?).to be true
    expect(roll.score).to be == 3
    
    roll = Category.new(2, 2, 2, 4, 4) 
    expect(roll.aces?).to be false
    expect(roll.score).to be == 0
  end
  
  it "is twos" do 
    roll = Category.new(2, 2, 2, 1, 1)
    expect(roll.twos?).to be true
    expect(roll.score).to be == 6
    
    roll = Category.new(2, 2, 1, 4, 4)
    expect(roll.twos?).to be true
    expect(roll.score).to be == 4
    
    roll = Category.new(1, 3, 1, 4, 4) 
    expect(roll.twos?).to be false
    expect(roll.score).to be == 0
  end
  
  it "is threes" do 
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.threes?).to be true
    expect(roll.score).to be == 9
    
    roll = Category.new(3, 3, 1, 4, 4)
    expect(roll.threes?).to be true
    expect(roll.score).to be == 6
    
    roll = Category.new(1, 2, 1, 4, 4) 
    expect(roll.threes?).to be false
    expect(roll.score).to be == 0
  end
  
  it "is fours" do 
    roll = Category.new(4, 4, 4, 1, 1)
    expect(roll.fours?).to be true
    expect(roll.score).to be == 12
    
    roll = Category.new(4, 4, 1, 2, 2)
    expect(roll.fours?).to be true
    expect(roll.score).to be == 8
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.fours?).to be false
    expect(roll.score).to be == 0
  end
  
  it "is fives" do 
    roll = Category.new(5, 5, 5, 1, 1)
    expect(roll.fives?).to be true
    expect(roll.score).to be == 15
    
    roll = Category.new(5, 5, 1, 2, 2)
    expect(roll.fives?).to be true
    expect(roll.score).to be == 10
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.fives?).to be false
    expect(roll.score).to be == 0
  end
  
  it "is sixes" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.sixes?).to be true
    expect(roll.score).to be == 18
    
    roll = Category.new(6, 6, 1, 2, 2)
    expect(roll.sixes?).to be true
    expect(roll.score).to be == 12
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.sixes?).to be false
    expect(roll.score).to be == 0
  end
end