module View
  def self.introduction_message
    puts "Welcome to Tic-Tac-Toe"
  end

  def self.select_symbol
    puts "Please select either 'X' or 'O' to select your symbol and start the game? (type 'X' or 'O')"
    gets.chomp
  end

  def self.symbol_selection(symbol)
    puts "You have selected to be #{symbol}"
  end

  def self.display_board(board)
    puts board
  end

  def self.display_possible_moves(moves)
    puts "Please select one of the following moves"
    puts moves.join(", ")
  end

  def self.select_move
    gets.chomp
  end

  def self.announce_move(move, player)
    puts "Player #{player} moves on #{move}"
  end
end
