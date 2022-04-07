require 'game'
require 'player'

describe Game do
  let (:game) { Game.new }

  it "reduced other player's HP points by 10" do
    player = Player.new('player')
    expect(game.attack(player)).to eq 90
  end
end