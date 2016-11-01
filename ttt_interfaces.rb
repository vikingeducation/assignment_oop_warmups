class TicTacToe
    check_victory
    check_draw
    check_game_over
    switch_players

class Player
    name
    name=(any_value)
    piece
    piece=(any_value)
    ask_for_coordinates
    validate_coordinates_format(any_value)

class Board
    board_arr
    render
    add_piece(any_value, any_value)
    piece_location_valid(any_value)
    coordinates_available?(any_value)
    winning_combination(any_value)
    winning_diagonal(any_value)
    winning_vertical(any_value)
    winning_horizontal(any_value)
    diagonals
    verticals
    horizontals
    full?