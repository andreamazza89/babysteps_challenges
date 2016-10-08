require 'diamond'

describe Diamond, ':full_diamond' do

  let(:test_diamond) { described_class }

  it 'returns an empty string for 0' do
    expect(test_diamond.new(0).full_diamond).to eq ''
  end 

  it 'returns an A for 1' do
    expect(test_diamond.new(1).full_diamond).to eq 'A'
  end 

  it 'returns appropriate diamond for 2' do
    expect(test_diamond.new(2).full_diamond).to eq " A \nB B\n A "
  end 

  it 'returns appropriate diamond for 3' do
    expect(test_diamond.new(3).full_diamond).to eq "  A  \n B B \nC   C\n B B \n  A  "
  end 

end
