require_relative '../src/board'

describe Board do
  describe "#possible_moves" do
    it "should return a list of possible moves" do
      board = Board.new
      expect(board.class).to eq(Board)
    end
  end
end
