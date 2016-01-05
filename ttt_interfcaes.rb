Class: TicTacToe
  play
  check_game_over
  check_victory
  check_draw
  switch_players

Class: Player
  name                                  # from the attr_accessor
  name=(new_value)                      # from the attr_accessor
  piece                                 # from the attr_accessor
  piece=(new_value)                     # from the attr_accessor
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)

Class: Board
  render
  add_piece(coords, piece)
  piece_location_valid?(coords)
  within_valid_coordinates?(coords)
  coordinates_available?(coords)
  winning_combination?(piece)
  winning_vertical?(piece)
  winning_horizontal?(piece)
  diagonals
  horizontals
  full?
