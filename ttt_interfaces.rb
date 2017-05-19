Class: TicTacToc
  new
  play
  check_game_over
  check_victory
  check_draw
  switch_players

Class: Player
  new(name, piece, board)
  name
  name=
  piece
  piece=
  get_coordinates
  ask_for_coordinates
  validate_coordinates_farmat(coords)

Class: Board
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