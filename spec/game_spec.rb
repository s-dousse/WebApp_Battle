require 'game'

describe Game do
      let!(:player1) { Player.new("Sally") }
      let!(:game) { Game.new }

      it "can reduce the hp of player" do
        game.attack(player1)
        expect(player1.hp).to eq 50
      end
   end