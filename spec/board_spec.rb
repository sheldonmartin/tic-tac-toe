require_relative '../src/board'

describe Board do
  let(:board) { Board.new }

  describe "#to_s" do
    it "should return a board as a string" do
      expect(board.to_s).to eq("3| | | |\n2| | | |\n1| | | |\n  a b c")
    end
  end

  describe "#mark_location" do
    it "should mark the board at the correct location" do
      board.mark_location('b3', 'X')

      expect(board.to_s).to eq("3| |X| |\n2| | | |\n1| | | |\n  a b c")
    end
  end

  describe "#possible_moves" do
    it "should return a list of possible moves" do
      expect(board.possible_moves).to eq(['a3','b3', 'c3', 'a2','b2', 'c2', 'a1','b1', 'c1'])
    end
  end
end
