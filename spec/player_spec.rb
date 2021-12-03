require 'player'

describe Player do
    let!(:player1) { Player.new("Sally") }

    it "returns its name" do
        expect(player1.name).to eq "Sally"
    end

    it "starts with a max number of HP" do
        expect(player1.hp).to eq 60
    end
end