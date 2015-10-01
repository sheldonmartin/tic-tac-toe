require_relative 'view'

class GameController
  
  def initialize(board)
    @board = board
  end

  def start
    View.introduction_message
  end

  private
  
  attr_reader :board
end
