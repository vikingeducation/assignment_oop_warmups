Class: TicTacToe
	t = TicTacToe.new
	t.play
	t.check_game_over
	t.check_victory
	t.check_draw
	t.switch_players


Class: Player
	p = Player.new(name, piece, board)
	p.name
	p.name=(new_name)
	p.piece
	p.piece=(new_piece)
	p.get_coordinates
	p.ask_for_coordinates
	p.validate_coordinates_format(coords)

Class: Board
	b = Board.new
	b.render
	b.add_piece(coords, piece)
	b.piece_location_valid?(coords)
	b.within_valid_coordinates?(coords)
	b.coordinates_available?(coords)
	b.winning_combination?(piece)
	b.winning_diagonal?(piece)
	b.winning_vertical?(piece)
	b.winning_horizontal?(piece)
	b.diagonals
	b.verticals
	b.horizontals
	b.full?
	






