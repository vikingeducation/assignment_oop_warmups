#ttt interfaces

class TicTacToe

  initialize
  play
  check_game_over
  check_victory
  check_draw
  switch_players


class Player
  :name, :piece   #from attr_accessor

  name=()         #from attr_accessor
  initialize
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format


class Board

  initialize
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