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
end