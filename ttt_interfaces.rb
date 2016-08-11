Class :TicTacToe
play
check_game_over
check_draw
switch_players

Class :Player
  name
  piece
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)

Class :Board
  render
  add_piece(coords, piece)
  piece_location_valid?(coords)
  within_valid_coordinates?(coords)
  coordinate_avaiable?(coords)
  winning_combination?(piece)
  winning_diagonal?(piece)
  winning_horizontal?(piece)
  winning_vertical?(piece)
  diagonals
  horizontals
  verticals
  full?
