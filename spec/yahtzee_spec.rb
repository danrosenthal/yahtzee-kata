require 'yahtzee'

describe Yahtzee do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  it 'scores a yahtzee as 50' do
    expect(subject.score([5,5,5,5,5])).to eq(50)
  end
  it 'scores not a yahtzee as 0' do
    expect(subject.score([1,2,3,4,5])).to eq(0)
  end
end