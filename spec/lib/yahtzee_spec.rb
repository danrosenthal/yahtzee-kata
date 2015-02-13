require "spec_helper"
require "score"

describe Score do
  context "when a roll has 3 aces and 2 twos" do
    roll = Score.new(1,1,1,2,2)
    
    it "adds up the aces for :aces" do
      expect(roll.roll_score[:aces]).to eq(3)
    end
    
    it "adds up the twos for :twos" do
      expect(roll.roll_score[:twos]).to eq(4)
    end
    
  end
  
  context "when a roll has 3 threes and 2 fours" do
    roll = Score.new(3,3,3,4,4)
    
    it "adds up all the threes for :threes" do
      expect(roll.roll_score[:threes]).to eq(9)
    end
  end
end