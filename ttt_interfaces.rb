# Interfaces
Class: TicTacToe
  board
  player_x
  player_y
  current_player
  play
  check_game_over
  check_victory
  check_draw
  switch_players


Class: Player
  name
  name=(new_value)
  piece
  piece=(new_value)
  board
  get_coordinates
  ask_for_coordiantes
  validate_coordinates_format(coords)


Class: Board
  board
  render
  add_piece
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
