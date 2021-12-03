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
end