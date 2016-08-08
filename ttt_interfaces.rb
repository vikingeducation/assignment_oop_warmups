Class: TicTacToe
  play
  check_game_over
  check_victory
  check_draw
  switch_players

Class: Player
  name
  piece
  name=("Mystery_Player")
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)

Class: Board
  render
  add_piece(coords, piece)
  piece_location_valid?(coords)
  within_valid_coordinates?(coords)
  cordinates_available?(coords)
  winning_combination?(piece)
  winning_diagonal?(piece)
  winning_vertical?(piece)
  winning_horizontal?(piece)
  diagonals
  verticals
  horizontals
  full?
