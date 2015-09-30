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

    context "after a location has been marked" do
      it "should return a list of possible moves" do
        board.mark_location('b3', 'X')
        expect(board.possible_moves).to eq(['a3', 'c3', 'a2','b2', 'c2', 'a1','b1', 'c1'])
      end      
    end
  end

  describe "#winner" do
    it "should return nil if there is no winner" do
      board.mark_location('a3', 'X')
      board.mark_location('b3', 'O')
      board.mark_location('c3', 'X')

      expect(board.winner).to be_nil
    end

    it "should return the winner of the game" do
      board.mark_location('a3', 'X')
      board.mark_location('b3', 'X')
      board.mark_location('c3', 'X')

      expect(board.winner).to eq('X')
    end
  end
end
