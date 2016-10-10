
class TicTacToe
    play
    check_game_over
    check_victory
    check_draw
    switch_players


class Player
    name
    name=(value)
    piece
    piece=(value)
    get_coordinates
    ask_for_coordinates
    validate_coordinates_format(coords)

class Board
    board_arr
    render
    add_piece(coords, piece)    
    winning_combination?(piece)
    full?
    piece_location_valid?(coords)
    within_valid_coordinates?(coords)
    coordinates_available?(coords)
    winning_diagonal?(piece)
    winning_vertical?(piece)
    winning_horizontal?(piece)
    verticals
    horizontals