require 'player'

describe Player do
    let!(:player1) { Player.new("Sally") }

    it "returns its name" do
        expect(player1.name).to eq "Sally"
    end
end