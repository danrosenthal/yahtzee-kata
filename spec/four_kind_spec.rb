require 'four_kind'

describe FourKind do
  it 'scores the total of the dice when four dice are the same' do
    expect(subject.score([4,4,4,4,1])).to eq(17)
  end
end