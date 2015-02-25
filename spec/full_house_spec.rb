require 'full_house'

describe FullHouse do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  it 'scores a full house 25' do
    expect(subject.score([3,3,3,2,2])). to eq(25)
  end
  it 'scores not a full house 0' do
    expect(subject.score([1,2,3,4,5])).to eq(0)
  end
end