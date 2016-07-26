class TicTacToe

  # Interfaces
  def initialize
    @board = Board.new
    @player_x = Player.new("Madame X", :x, @board)
    @player_y = Player.new("Mister Y", :y, @board)
    @current_player = @player_x
  end

  def play
    loop do
      # call Board public render action
      @borad.render
      # call Player public get_coordinates action
      @current_player.get_coordinates
      break if check_game_over # Private action, not public
      switch_players #Private action
    end
  end

  private
    def check_game_over
    end

    def check_draw
    end

    def check_victory
    end

    def swicth_players
    end
end

# Class:  TicTacToe
#     play

class Player
  attr_accessor :name, :piece

  def initialize(name = "Mystery_player", piece, board)
    raise "Piece must be a symbol" unless piece.is_a?(Symbol)
    @name = name
    @piece = piece
    @board = board
  end

  def get_coordinates
    # @board.add_piece(coords, @piece)
  end

  private
  # not part of the interface
  def ask_for_coordinates
  end

  def validate_coordinates_format(coords)
  end
end

# Interfaces for the Player
# Class: Player
#     name       => from the attr_accessor
#     piece      => from the attr_accessor
#     get_coordinates

class Board
  def initialize
    @board = Array.new(3){Array.new(3)}
  end

  def render
  end

  def add_piece(coords, piece)
  end

  def winning_combination?(piece)
  end

  def full?
  end

  private
  # not in the interface
  def piece_location_valid?(coords)
  end

  def within_valid_coordinates?(coords)
  end

  def coordinates_available?(coords)
  end

  #...
end

# Interfaces for the Board class
# Class: Board
#    render
#    add_piece(coords, piece)
#    winning_combination?(piece)
#    full?
