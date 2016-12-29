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
    name
    name=(value)
    piece
    piece=(value)

    get_coordinates
    ask_for_coordinates

    validate_coordinates_format(coords)
end




# Maintains game board state
Class: Board

    board_arr

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
