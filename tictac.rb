class TicTacToe

  def initialize

    @board = Board.new

    @player_x = Player.new("Mr X", :x , @board)
    @player_y = Player.new("Miss Y", :y , @board)

    @current_player = @player_x
  end

  def play

    loop do
      @board.render

      @current_player.get_coordinates

      break if check_game_over

      switch_players
    end
  end

  def check_game_over

    if @board.winning_combination?(@current_player.piece)
      puts"Congratulations #{@current_player.name}, you win!"
      true
    else
      false
    end
  end

  def check_draw
    if @board.full?
      puts "Bummer, you've drawm ..."
      true
    else
      false
    end
  end

  def switch_players
    if @current_player == @player_x
      @current_player = @player_y
    else
      @current_player = @player_x
    end
  end

class Player
  attr_accessor :name, :piece

  def initialize(name = "Myster_Player", piece, board)

    raise "Piece must be a Symbol" unless piece.is_a?(Symbol)
    @name = name
    @piece = piece
    @board = board
  end

  def get_coordinates

    loop do
      coords = ask_for_coordinates

      if validate_coordinates_format(coords)

        if @board.add_piece(coords,@piece)

          break
        end
      end
    end
  end

  def ask_for_coordinates
    # Display message asking for coordinates
    puts "#{@name}(#{@piece}), enter your coordinates in the form x,y:"
    # Pull coordinates from command line
    gets.strip.split(",").map(&:to_i)
  end

  def validate_coordinates_format(coords)

    if coords.is_a?(Array) && coords.size == 2
      true
    else
      puts "Your coordinates are in the improper format"
    end
  end

end


# Mantains game board state
class Board
  # initialize board
  def initialize
    # set up blank data structure
    @board = Array.new(10){Array.new(10)}
  end

  # render
  def render
    puts
    # loop through data structer
    @board.each do |row|
      row.each do |cell|
        # display an existing marker if any, else blank
        cell.nil? ? print("-") : print(cell.to_s)
      end
      puts
    end
    puts

  end

  # add_piece
  def add_piece(coords, piece)
    # IF piece_location_valid?
    if piece_location_valid?(coords)
      # place_piece
      @board[coords[0]][coords[1]] = piece
      true
    else
      false
    end
  end

  # piece_location_valid?
  def piece_location_valid?(coords)
    # Is the placement within_valid_coordinates?
    if within_valid_coordinates?(coords)
      # Are the piece coordinate_available?
      coordinates_avaiable?(coords)
    end
  end

  def within_valid_coordinates?(coords)
    # UNLESS piece coords are in the acceptible range
    if(0..2).include?(coords[0])&&(0..2).include?(coords[1])
      true
    else
      # display an error messgae
      puts "Piece coordinates are out of bound"
    end
  end

  # coordinates_avaiable?
  def coordinates_avaiable?(coords)
    # UNLESS piece coords are not occupied
    if @board[coords[0]][coords[1]].nil?
      true
    else
      # display error message
      puts "There is already a piece there!"
    end
  end

  # winning_combination?
  def winning_combination?(piece)

    winning_diagonal?(piece) ||
    winning_horizontal?(piece) ||
    winning_vertical?(piece)
  end

  # winning_diagonal?
  def winning_diagonal?(piece)
    # check if specified piece has a triplet across horizontals
    diagonals.any? do |diag|
      diag.all?{|cell| cell == piece}
    end
  end

  def winning_vertical?(piece)

    verticals.any? do |vert|
      vert.all?{|cell| cell == piece}
    end
  end

  # winning horizontal?
  def winning_horizontal?(piece)

    # horizontal
    horizontals.any? do |horz|
      horz.all?{|cell| cell == piece}

    end
  end

  def diagonals

     [[@board[0][0],@board[1][1],@board[2][2]],[@board[2][0],@board[1][1],@board[0][2]]]
  end

  def verticals

    @board
  end

  def horizontals

    horizontals = []
    3.times do |i|
      horizontals << [@board[0][i],@board[1][i],@board[2][i]]
    end
    horizontals
  end

  def full?
    # does every square contain a piece
    @board.all? do |row|
      row.none?(&:nil?)
    end
  end

end
end

t=TicTacToe.new
t.play
