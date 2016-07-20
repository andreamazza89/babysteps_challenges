describe PrintDiamond do

  let(:diamond) { subject }

  it 'returns the letter A' do
    expect(diamond.print_diamond('A')).to eq('A')
  end

end
