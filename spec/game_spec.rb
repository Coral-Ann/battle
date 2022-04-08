require 'game'
require 'player'

describe Game do

  it 'creates player 1' do
    expect(subject.player_1).to be_instance_of Player
  end

  it 'creates player 2' do
    expect(subject.player_2).to be_instance_of Player
  end

  it "reduced other player's HP points by 10" do
    player = Player.new('player')
    expect(subject.attack(player)).to eq 90
  end
end