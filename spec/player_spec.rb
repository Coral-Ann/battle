require 'player'

describe Player do
  let (:barry) { Player.new('Barry')}
  let (:terry) { Player.new('Terry')}

  it 'returns players name' do
    expect(barry.name).to eq 'Barry'
  end
  it "reduced player 2's HP points by 10" do
    terry.attack(barry)
    expect(barry.hp).to eq 90
  end
end