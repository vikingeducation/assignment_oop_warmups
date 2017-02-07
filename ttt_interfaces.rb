# Interface for TicTacToe class
Class: TicTacToe
  play
  check_game_over
  check_victory
  check_draw
  switch_players

# Interface for Player class
Class: Player
  name
  name=(new_value)
  piece
  piece=(new_value)
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)

# Interface for Board class
Class: Board
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
