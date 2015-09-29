require_relative '../src/board'

describe Board do
  describe "#possible_moves" do
    it "should return a list of possible moves" do
      board = Board.new
      expect(board.possible_moves).to eq(['a3','b3', 'c3', 'a2','b2', 'c2', 'a1','b1', 'c1'])
    end
  end
end
