class: TicTacToe
  initialize
  play
  check_game_over
  check_victory
  check_draw
  switch_players


class: Player
  attr_accessor :name, :piece
  name        # from attr_accessor
  name=       # from attr_accessor
  piece       # from attr_accessor
  piece=      # from attr_accessor
  initialize(name, piece, board)
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)


class: Board
  board_arr   # from attr_accessor
  initialize(board_arr)
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
