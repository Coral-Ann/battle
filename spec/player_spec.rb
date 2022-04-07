require 'player'

describe Player do
  let (:player) { Player.new('Barry')}

  it 'returns players name' do
    expect(player.name).to eq 'Barry'
  end
end