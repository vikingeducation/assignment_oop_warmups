# The main game class. We start the game
# by instatiating an instance of this class.
class TicTacToe
    # Publicly available when we instatiate a new instance
    # with the 'new' keyword.
    def initialize
        # Instatiated from the Board class, whose 'new' keyword
        # is also publicly available. @board is an instance variable
        # without any getters, setters, or attr_accessors. It is made
        # available to other methods because it's passed as an argument.
        @board = Board.new

        # Instatiated from the Player class, also with the publicly
        # available 'new' keyword. Same interface as @board above.
        @player_x = Player.new("Madame X", :x, @board)
        @player_y = Player.new("Mister Y", :y, @board)

        # Only internally accessible by other methods.
        @current_player = @player_x
    end

    # How to start the game. Main loop for the game. Not a private
    # or protected method.
    def play

        # loop infinitely
        loop do
            # Publicly available from Board class. Not private or protected.
            @board.render

            # Publicly available from Player class. Not private or protected.
            @current_player.get_coordinates

            # Publicly available from this class. Not private or protected.
            break if check_game_over

            # Publicly available from this class. Not private or protected.
            switch_players
        end
    end

    # Publicly available method.
    def check_game_over
        # check for victory
        # check for draw
        # both publicly available methods
        check_victory || check_draw
    end

    # publicly available method
    def check_victory
        # IF Board says current player's piece has
        # a winning_combination?
        # publicly available method
        if @board.winning_combination?(@current_player.piece)
            # then output a victory message
            puts "Congratulations #{@current_player.name}, you win!"
            true
        else
            false
        end
    end

    # publicly available
    def check_draw
        # If Board says we've filled up
        # publicly available
        if @board.full?
            # display draw message
            puts "Bummer, you've drawn..."
            true
        else
            false
        end
    end

    # switch_players
    # publicly available
    def switch_players
        if @current_player == @player_x
            @current_player = @player_y
        else
            @current_player = @player_x
        end
    end

end


# Manages all player-related functionality
class Player
    # getter and setter for instance variables
    # These are actually uncessary for the game to work
    # and needlessly open up the interface.
    attr_accessor :name, :piece

    # publicly available
    def initialize(name = "Mystery_Player", piece, board)
        # Set marker type (e.g. X or O)
        raise "Piece must be a Symbol!" unless piece.is_a?(Symbol)
        @name = name
        @piece = piece
        @board = board
    end

    # publicly available
    def get_coordinates
        # loop infinitely
        loop do
            # ask_for_coordinates is a publicly available method
            coords = ask_for_coordinates

            # IF validate_coordinates_format is true
            # also publicly available
            if validate_coordinates_format(coords)
                # IF piece can be placed on Board
                #
                if @board.add_piece(coords, @piece)
                    # break the loop
                    break
                end
            end
        end
    end


    # ask_for_coordinates
    def ask_for_coordinates
        # Display message asking for coordinates
        puts "#{@name}(#{@piece}), enter your coordinates in the form x,y:"
        # pull coordinates from command line
        gets.strip.split(",").map(&:to_i)
    end

    # validate_coordinates_format
    def validate_coordinates_format(coords)
        # UNLESS coordinates are in the proper format
        if coords.is_a?(Array) && coords.size == 2
            true
        else
            # display error message
            # Note that returning `nil` acts falsy!
            puts "Your coordinates are in the improper format!"
        end
    end

end


# All methods in this class are publicly available and can
# be accessed from other classes. The instance variables don't
# getters and setters, but they can be accessed by the methods here
# and in other classes.
class Board
    # initialize board
    def initialize
        # set up blank data structure
        @board = Array.new(3){Array.new(3)}
    end

    # render
    def render
        puts
        # loop through data structure
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
            # place piece
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
            # Are the piece coordinates_available?
            coordinates_available?(coords)
        end
    end

    # within_valid_coordinates?
    def within_valid_coordinates?(coords)
        # UNLESS piece coords are in the acceptible range
        if (0..2).include?(coords[0]) && (0..2).include?(coords[1])
            true
        else
            # display an error message
            puts "Piece coordinates are out of bounds"
        end
    end

    # coordinates_available?
    def coordinates_available?(coords)
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
        # is there a winning_diagonal?
        # or winning_vertical?
        # or winning_horizontal? for that piece?
        winning_diagonal?(piece)   ||
        winning_horizontal?(piece) ||
        winning_vertical?(piece)
    end

    # winning_diagonal?
    def winning_diagonal?(piece)
        # check if specified piece has a triplet across diagonals
        diagonals.any? do |diag|
            diag.all?{|cell| cell == piece }
        end
    end

    # winning_vertical?
    def winning_vertical?(piece)
        # check if specified piece has a triplet across verticals
        verticals.any? do |vert|
            vert.all?{|cell| cell == piece }
        end
    end

    # winning_horizontal?
    def winning_horizontal?(piece)
        # check if specified piece has a triplet across horizontals
        horizontals.any? do |horz|
            horz.all?{|cell| cell == piece }
        end
    end

    # diagonals
    def diagonals
        # return the diagonal pieces
        [[ @board[0][0],@board[1][1],@board[2][2] ],[ @board[2][0],@board[1][1],@board[0][2] ]]
    end

    # verticals
    def verticals
        # return the vertical pieces
        @board
    end

    # horizontals
    def horizontals
        # return the horizontal pieces
        horizontals = []
        3.times do |i|
            horizontals << [@board[0][i],@board[1][i],@board[2][i]]
        end
        horizontals
    end

    # full?
    def full?
        # does every square contain a piece?
        @board.all? do |row|
            row.none?(&:nil?)
        end
    end

end

t = TicTacToe.new
t.play
