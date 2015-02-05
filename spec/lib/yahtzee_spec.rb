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
end