require 'sixes'

describe Sixes do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  
  it 'scores a roll with three sixes as 18' do
    expect(subject.score([1,3,6,6,6])).to eq(18)
  end
end