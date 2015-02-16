require "spec_helper"
require "dice"

describe Dice do
  context "when we roll new dice" do
  dice = Dice.new
    it "is an array with a length of 5" do
      expect(dice.roll.length).to eq(5)
    end
  end
end