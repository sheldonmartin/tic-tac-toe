Struct.new("Coordinate", :x, :y)

class Board
  attr_reader :board, :number_of_rows, :number_of_cols

  @@KEY = {
    "a3" => [0,0],
    "b3" => [0,1],
    "c3" => [0,2],
    "a2" => [1,0],
    "b2" => [1,1],
    "c2" => [1,2],
    "a1" => [2,0],
    "b1" => [2,1],
    "c1" => [2,2]
  }

  def initialize
    @number_of_rows = 3
    @number_of_cols = 3
    @board = Array.new(number_of_rows){Array.new(number_of_cols){" "}}
  end

  def possible_moves
    @@KEY.keys.select do |key|
      empty_cell(key)
    end
  end

  def mark_location(location, symbol)
    c = coordinate(location)
    board[c.x][c.y] = symbol
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
  end

  def winner
    horizontal_winner = find_horizontal_winner

    return horizontal_winner if horizontal_winner

    return nil
  end

  private

  def find_horizontal_winner
    board.each do |row|
      row.delete(" ")
      return row[0] if row.length == number_of_rows
    end

    return nil
  end

  def empty_cell(key)
    c = coordinate(key)

    board[c.x][c.y] == " "
  end

  def coordinate(key)
    Struct::Coordinate.new(@@KEY[key][0], @@KEY[key][1])
  end
end
