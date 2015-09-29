class Board
  attr_reader :board, :number_of_rows, :number_of_cols

  def initialize
    @number_of_rows = 3
    @number_of_cols = 3
    @board = Array.new(number_of_rows){Array.new(number_of_cols){" "}}
  end

  def to_s
    board_string = ""
    y_axis = number_of_rows

    board.each do |row|
      board_string << y_axis.to_s + "|"
        board_string << row.map do |cell|
          "#{cell}"
        end.join("|") + "|\n"
      y_axis -= 1
    end

    board_string << "  a b c"

    return board_string
  end
end
