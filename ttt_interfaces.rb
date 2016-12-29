# Notes for a TicTacToe interface
Class: TicTacToe

    play

    check_game_over
    check_victory
    check_draw
    switch_players

end




# Manages all player-related functionality
Class: Player
    name                                    # from the attr_reader
    name=(value)                            # from the attr_accessor
    piece                                   # from the attr_reader
    piece=(value)                           # from the attr_accessor

    get_coordinates
    ask_for_coordinates

    validate_coordinates_format(coords)
end




# Maintains game board state
Class: Board

    board_arr                              # from the attr_reader

    render
    add_piece(coords, piece)
    
    piece_location_valid?(coords)
    within_valid_coordinates?(coords)
    coordinates_available?(coords)
    winning_combination?(piece)
    winning_diagonal?(piece)
    winning_vertical?(piece)
    winning_horizontal?(piece)

    diagonals
    verticals
    
    horizontals
    full?

end
