require 'game'

describe Game do
  #  let(:player_1) { double (:player), name: "Charlie", hp: 60 }
  #  let(:player_2) { double (:player), name: "Snoopy", hp: 60}
   subject(:game) { Game.new( "Charlie", "Snoopy") }

  describe ' #player_1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq("Charlie")
    end
  end

  describe ' #player_2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq("Snoopy")
    end
  end

  describe " #attack" do
    context "can attack a player" do
      it { is_expected.to respond_to(:attack).with(1).argument }
    end

    # context "gives damage to the player receiving the attack" do
    #   it "make player1 loose 10 HP" do 
    #     # allow(player_1).to receive_messages(:lo ose_hp)
    #     game.attack(player_1)
    #     expect(player_1.hp).to eq 50
    #   end
    # end
  end

  describe " #switch_turns" do
    context "game starts" do
      it "is player1's turn" do
        expect(game.current_turn).to eq game.player1
      end
    end

    context "player1 has attacked player2" do
      it "switches turn" do
        game.switch_turns
        expect(game.current_turn).to eq game.player2
      end
    end
  end
end