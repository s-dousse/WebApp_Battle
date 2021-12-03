class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  RECEIVED_HIT = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

    def receive_damage
    @hp -= RECEIVED_HIT
  end

end