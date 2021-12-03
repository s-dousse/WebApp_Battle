class Game
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def attack(player)
    player.loose_hp
  end

  def switch_turns
    @current_turn == @player1 ? @current_turn = @player2 : @current_turn
  end
end