require 'player'

describe Player do

  context "Player set up" do
      let!(:player1) { Player.new("Sally") }

      it "returns its name" do
        expect(player1.name).to eq "Sally"
      end

      it "has a default number of HP when initialised" do
        expect(player1.hp).to eq 60
      end
  end

  context "Player's actions" do
      let!(:player1) { Player.new("Sally") }
      let!(:player2) { Player.new("Linus") }

      it "can attack another player" do
        expect(player1).to respond_to(:attack).with(1).argument
      end

      it "can reduce the hp of other player" do
        player1.attack(player2)
        expect(player2.hp).to eq 50
      end
   end
end