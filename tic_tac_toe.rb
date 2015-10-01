require_relative 'src/game_controller'
require_relative 'src/board'

board = Board.new
game = GameController.new(board)

game.start
