require 'sm_straight'

describe SmallStraight do
  it 'scores an empty roll 0' do
    expect(subject.score([])).to eq(0)
  end
  it 'scores a small straight 30' do
    expect(subject.score([1,2,3,4,4])).to eq(30)
  end
  it 'scores not a small straight 0' do
    expect(subject.score([2,2,2,2,2])).to eq(0)
  end
end