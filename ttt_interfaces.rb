# A note about comments -- 
# this is more commented than typical because
# the demo is meant to show how pseudo-code
# becomes Ruby code.
# Many of these comments should be deleted.

# Note about Privacy: We haven't made things
# private here which should be (which is 
# basically everything except `play`) in order
# to show off writing tests for those methods.
Class: TicTacToe

    # initialize
    def initialize
        # set up the board
        @board = Board.new

        # set up the players
        @player_x = Player.new("Madame X", :x, @board)
        @player_y = Player.new("Mister Y", :y, @board)

        # assign the starting player
        @current_player = @player_x
    end

    # play
    play

    check_game_over

    check_victory

    check_draw

    switch_players

end




# Manages all player-related functionality
Class: Player
    name
    piece

    # initialize
    def initialize(name = "Mystery_Player", piece, board)
        # Set marker type (e.g. X or O)
        raise "Piece must be a Symbol!" unless piece.is_a?(Symbol)
        @name = name
        @piece = piece
        @board = board
    end

    # get_coordinates
    def get_coordinates

    # ask_for_coordinates
    def ask_for_coordinates
  
    # validate_coordinates_format
    def validate_coordinates_format(coords)
    

end




# Maintains game board state
Class: Board

    # Allow reading the @board_arr variable
    board_arr

    # initialize board
    def initialize( board_arr = nil )
        # set up blank data structure unless
        # we are passed one
        @board_arr = board_arr || Array.new(3){Array.new(3)}
    end

    # render
    render

    # add_piece
    add_piece(coords, piece)
     
    # piece_location_valid?
    piece_location_valid?(coords)

    # within_valid_coordinates?
    within_valid_coordinates?(coords)
    
    # coordinates_available?
    coordinates_available?(coords)
     
    # winning_combination?
    winning_combination?(piece)

    # winning_diagonal?
    winning_diagonal?(piece)
     
    # winning_vertical?
    winning_vertical?(piece)
    
    # winning_horizontal?
    winning_horizontal?(piece)
    

    # diagonals
    diagonals
    
    # verticals
    verticals
    
    # horizontals
    horizontals
    
    # full?
    full?
    

end

# Script to run the game on load
# t = TicTacToe.new
# t.play