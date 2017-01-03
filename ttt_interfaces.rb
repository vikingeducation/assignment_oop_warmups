# interfaces
class:  TicTacToe
# if class instantiated with ttt = TicTacToe.new...
play                              # ttt.play
check_game_over                   # ttt.check_game_over
check_victory                     # ttt.check_victory
check_draw                        # ttt.check_draw
switch_players                    # ttt.switch_players

class: Player
name, name=(new_value)            # attr_accessor
piece, piece=(new_value)          # attr_accessor
get_coordinates
ask_for_coordinates
validate_coordinates_format(coords)

class: Board
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
