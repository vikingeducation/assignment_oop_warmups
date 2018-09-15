class: TicTacToe
    play
    check_game_over
    check_victory
    check_draw
    switch_players

class: Player
    name                     # from attr_accessor
    name=(new_value)  # from attr_accessor
    piece                    # from attr_accessor
    piece=(new_value) # from attr_accessor

    get_coordinates
    ask_for_coordinates
    validate_coordinates_format(coords)

class: Board
    render
    add_piece
    piece_location_valid
    within_valid_coordinates(coords)
    coordinates_available(coords)
    winning_combination(piece)
    winning_diagonal(piece)
    winning_horizontal(piece)
    winning_vertical(piece)
    diagonals
    verticals
    horizontals
    full?
