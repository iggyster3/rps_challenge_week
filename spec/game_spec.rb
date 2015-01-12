require 'Game'

describe Game do

  let(:game){Game.new}

    it "Can have one player added" do
      game.add_player(player1)
      expect(game.player1).to eq player1
    end

    it "Can have a second player added" do
    end

    it "knows when there are two players" do
    end

    it "Knows when it doesnt have two players" do
    end

    it "Knows that the game is not ready" do
    end

  context "The game has two players" do

    it "Knows the game is ready" do
    end

    it "knows if there is a winner" do
    end

    it "knows if there is a loser" do
    end

    it "Knows if the game is tied" do
    end

  end

end
