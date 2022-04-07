require 'player'

describe Player do
  let (:barry) { Player.new('Barry')}

  it 'returns players name' do
    expect(barry.name).to eq 'Barry'
  end
end