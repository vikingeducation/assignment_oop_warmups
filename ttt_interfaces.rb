#ttt interfaces

# go thru public interface
# public_methods


class TicTacToe

  play
  check_game_over
  check_victory
  check_draw
  switch_players


class Player
  :name, :piece   #from attr_accessor

  name=         #from attr_accessor
  piece=
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format


class Board

  board_arr
  render
  add_pieces
  piece_location_valid?
  within_valid_coordinates?
  coordinates_available?
  winning_combination?
  winning_diagonal
  winning_vertical
  winning_horizontal
  diagonals
  verticals
  horizontals
  full?