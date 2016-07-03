require 'rspec'
require './craps_game'

describe CrapsGame, :type => :model do
  describe "#result" do
    it "returns 'Win' if the opening rolls are 7 or 11" do
      craps_game = CrapsGame.new
      allow(craps_game.roll(0)).to receive(7)
      expect(craps_game.result).to eq('Win')
    end
  end
end