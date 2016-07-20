describe PrintDiamond do

  let(:diamond) { subject }

  it 'returns the letter A' do
    expect(diamond.print_diamond('A')).to eq('A')
  end

  it 'B returns the smallest diamond' do
    expect(diamond.print_diamond('B')).to eq(' A \nB B\n A ')
  end

end
