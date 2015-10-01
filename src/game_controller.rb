require_relative 'view'

class GameController  
  def initialize(board)
    @board = board
    @players = ['X', 'O']
  end

  def start
    View.introduction_message
    symbol = ""

    until players.include?(symbol)
      symbol = View.select_symbol.chomp.upcase
    end

    View.symbol_selection(symbol)
  end

  private

  attr_reader :board, :players
end
