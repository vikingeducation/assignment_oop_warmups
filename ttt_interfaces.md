Class: TicTacToe
  play                                #  accessible as a method call on an instance of the class

  check_game_over                     #  accessible as a method call on an instance of the class.
                                      #  This is only called internally however and can be private

  check_draw                          #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  check_victory                       #  accessible as a method call on an instance of the class.
                                      #  This is only called internally however and can be private

  switch_players                      #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

Class: Player
  name                                #  from attr_accessor

  piece                               #  from attr_accessor

  get_coordinates                     #  accessible as a method call on an instance of the class.

  validate_coordinates_format         #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  ask_for_coordinates                 #  accessible as a method call on an instance of the class.
                                      #  This is only called internally however and can be private

Class: Board
  render                              #  accessible as a method call on an instance of the class

  add_piece(coords, piece)            #  accessible as a method call on an instance of the class.

  winning_combination?(piece)         #  accessible as a method call on an instance of the class

  full?                               #  accessible as a method call on an instance of the class.

  piece_location_valid?(coords)       #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private
  within_valid_coordinates?(coords)   #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  coordinates_available?(coords)      #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  winning_diagonal?(piece)            #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  winning_vertical?(piece)            #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  winning_horizontal?(piece)          #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  diagonals                           #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  verticals                           #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private

  horizontals                         #  accessible as a method call on an instance of the class
                                      #  This is only called internally however and can be private
