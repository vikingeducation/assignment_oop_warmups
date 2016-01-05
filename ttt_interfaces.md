
Class: TicTacToe
    initialize
    play
    check_game_over  
    check_victory
    check_draw
    switch_players


Class: Player
    name
    name=  # setter / new value
    piece
    piece=   # setter / new value
    initialize(name = "Mystery_Player", piece, board)
    get_coordinates
    ask_for_coordinates
    validate_coordinates_format
    validate_coordinates_format(coords)


Class: Board
    initialize
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


