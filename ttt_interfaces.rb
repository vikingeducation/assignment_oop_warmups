Class: TicTacToe
	play # Main game loop
	new 	

Class: Player
	name 											# attr_accessor
	piece 										# attr_accessor
	new(name, piece, board)
	get_coordinates	

Class: Board
	boar_arr		# attr_reader
	new(boar_arr)
	render
	add_piece
	winning_combination?


