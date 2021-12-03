
class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  RECEIVED_HIT = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(other_player)
   other_player.loose_hp
  end

  def loose_hp
    @hp -= RECEIVED_HIT
  end
end