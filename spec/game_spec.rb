require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
   let(:player1) { double (:player), hp: 60}
   let(:player2) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player2
    end
  end 

  # describe "#loose_hp" do
  #   it "decrese the player's hp by 10" do
  #     allow(player1).to receive(:loose_hp)

  #     game.player_1.loose_hp
  #     expect(player1.hp).to eq 50
  #   end
  # end
end