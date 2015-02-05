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
end