class TicTacToe

  new # through initialize

  play # instance method
  chechk_game_over # instance method
  check_victory # instance method
  check_draw # instance method
  switch_player # instance method
end

class Player
  new # through initialize
  name # through attr_accessor
  piece # through attr_accessor
  get_coordinates # instance method
  ask_for_coordinates # instance method
  validate_coordinates_formate # instance method

end

class Board
  board_arr # attr_reader
  new # initialize method
  render # instance method
  add_piece # instance method
  piece_location_valid? # instance method
  within_valid_coordinates? # instance method
  coordinates_available? # instance method
  winning_combination? # instance method
  winning_diagonal? # instance method
  winning_vertical? # instance method
  winning_horizontal? # instance method
  diagonals # instance method
  verticals # instance method
  horizontals # instance method
  full? # instance method 





end
