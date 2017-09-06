#What this file is about

#To get some quick practice thinking about this concept:

#Create a new file called "ttt_interfaces" in the current project.

#Go back to the Tic Tac Toe demo and write down the interface for
#each of the classes it uses. This means indicating which methods and v
#ariables are publicly available and how to call them.
#Remember that an attr_reader exposes a different method
#from an attr_writer, while attr_accessor exposes both.

#tictactoe file: https://github.com/vikingeducation/demo_tictactoe/blob/master/lib/tictactoe.rb

Class: TicTacToe
  play
  check_game_over
  check_victory
  check_draw
  switch_players

Class: Player
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)

Class: Board
  board_arr # attr_reader
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
  full?
