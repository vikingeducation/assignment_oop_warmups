class TicTacToe
  new
  play
  check_game_over
  check_victory
  check_draw
  switch_players

class Player
  new
  name
  name=(new value)
  piece
  piece=(new value)
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)

class Board
  new
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
  
