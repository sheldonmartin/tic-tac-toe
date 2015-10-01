require_relative 'view'
require_relative 'computer'

class GameController
  def initialize(board)
    @board = board
    @player_symbols = ['X', 'O']
  end

  def start
    View.introduction_message
    symbol = ""

    until player_symbols.include?(symbol)
      symbol = View.select_symbol.upcase
    end

    View.symbol_selection(symbol)

    play(symbol)
  end

  private

  attr_reader :board, :player_symbols, :computer

  def play(symbol)
    human = symbol
    computer = symbol == 'X' ? 'O' : 'X'
    players = [human, computer]

    until board.winner
      players.each do |player|
        if player == human
          human_move(player)
        else
          computer_move(player)
        end

        break if board.winner
      end
    end

    View.announce_winner(board.winner)
  end

  def human_move(player)
    View.display_board(board)
    View.display_possible_moves(board.possible_moves)

    move = View.select_move

    until board.possible_moves.include?(move)
      View.display_possible_moves(board.possible_moves)
      move = View.select_move
    end

    board.mark_location(move, player)
    View.display_board(board)
  end

  def computer_move(player)
    move = Computer.make_move(board.possible_moves)
    board.mark_location(move, player)
    View.announce_move(move, player)
    View.display_board(board)
  end
end
