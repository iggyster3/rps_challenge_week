require 'Game'
require 'Player'

describe Game do

  let(:game){Game.new}
  let(:player1){Player.new}
  let(:player2){Player.new}

    it "Can have one player added" do
      game.add_player(player1)
      expect(game.player1).to eq player1
    end

    it "Can have a second player added" do
      game.add_player(player1)
      game.add_player(player2)
      expect(game.player1).to eq player1
      expect(game.player2).to eq player2
    end

    it "knows when there are two players" do
      game.add_player(player1)
      game.add_player(player2)
      expect(game.send(:has_two_players?)).to eq true
    end

    it "Knows when it doesnt have two players" do
      game.add_player(player1)
      expect(game.send(:has_two_players?)).to eq false
    end

    it "Knows that the game is not ready" do
      expect(game.ready?).to eq false
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
