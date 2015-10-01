module View
  def self.introduction_message
    puts "Welcome to Tic-Tac-Toe"
  end

  def self.select_symbol
    puts "Please select either 'X' or 'O' to select your symbol and start the game? (type 'X' or 'O')"
    return gets
  end

  def self.symbol_selection(symbol)
    puts "You have selected to be #{symbol}"
  end
end
