class Game
  def attack(player = Player.new)
    player.receive_damage
  end
end