require 'rspec'
require './player'
require './dice'
describe CrapsGame::Dice, :type => :model do

  let(:dice)  { CrapsGame::Dice.new }

  describe ".roll" do
    it "returns a random number between 1 and 6" do
      expect(dice.roll).to be_between(1, 6)
    end
  end

end

describe CrapsGame::Player, :type => :model do

let(:player)  { CrapsGame::Player.new }

  describe "#new" do
    it "player should have 2 dices" do
      expect(player.dice1).not_to be nil
      expect(player.dice2).not_to be nil
    end
  end

  describe ".roll_dices" do

    it "should return a sum between 2 and 12" do
      expect(player.roll_dices).to be_between(2,12)
    end

    context "when first dice is 5 and second dice is 7" do

      before do
        allow(player.dice1).to receive(:result).and_return(5)
        allow(player.dice2).to receive(:result).and_return(7)
      end

      it "should return 12" do
        expect(player.roll_dices).to eq(12)
      end
    end


    # context "when player receives 7 or 13 in first roll" do
      
    #   before do
    #     allow(player).to receive(:roll).and_return(7)
    #   end

    #   it "should return a win" do
    #     expect(CrapsGame::game).to eq('Win')
    #   end
    # end
  end
end


describe CrapsGame, :type => :module do

  describe ".check_first_row" do

    it "should return win if first row sums 7 or 11" do
      expect(CrapsGame.check_first_row).with(7).to eq("Win")
    end
  end
end

