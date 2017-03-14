# class: TicTacToe

initialize => t = TicTacToe.new (how to call it)
play => t.play
check_game_over => t.check_game_over 
check_victory => t.check_victory
check_draw => t.check_draw
switch_players => t.switch_players

# class: Player

initialize(name = "Mystery_Player", piece, board) => p = Player.new(name, piece, board)
name => p.name               
name=(new_value) => p.name = new_value
piece => p.piece                    
piece=(new_value) => p.piece = new_value

get_coordinates => p.get_coordinates
ask_for_coordinates => p.ask_for_coordinates
validate_coordinates_format(coords) => p.validate_coordinates_format(coords)

# class: Board

initialize => b = Player.new 
render => b.render
add_piece(coords, piece) => b.add_piece(coords, piece)
piece_location_valid?(coords) => b.piece_location_valid?(coords)
within_valid_coordinates(coords) => b.within_valid_coordinates(coords)
coordinates_available(coords) => b.coordinates_available(coords)
winning_combination(piece) => b.winning_combination(piece)
winning_diagonal(piece) => b.winning_diagonal(piece)
winning_horizontal(piece) => b.winning_horizontal(piece)
winning_vertical(piece) => b.winning_vertical(piece)
diagonals => b.diagonals
verticals => b.verticals
horizontals => b.horizontals
full? => b.full?
