require 'chance'

describe Chance do
  it 'scores an empty roll 0' do
    expect(subject.score([])).to eq(0)
  end
  it 'scores a roll the sum of its dice' do
    expect(subject.score([1,1,1,1,1])).to eq(5)
  end
end