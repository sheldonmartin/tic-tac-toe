require_relative '../src/board'

describe Board do
  describe "#to_s" do
    it "should return a board as a string" do
      board = Board.new
      expect(board.to_s).to eq("3| | | |\n2| | | |\n1| | | |\n  a b c")
    end
  end

  describe "#possible_moves" do
    it "should return a list of possible moves" do
      board = Board.new
      expect(board.possible_moves).to eq(['a3','b3', 'c3', 'a2','b2', 'c2', 'a1','b1', 'c1'])
    end
  end
end
