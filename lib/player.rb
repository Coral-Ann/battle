class Player
  attr_reader :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end
  def attack(player)
    player.receive_damage
  end
  def receive_damage
    @hp -= 10
  end
end