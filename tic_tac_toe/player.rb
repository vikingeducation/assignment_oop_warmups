class Player
  attr_accessor :name, :piece
  def initialize(name = "Mystery_Player", piece, board)
    raise 'Piece must be a symbol!' unless piece.is_a?(Symbol)
    @name = name
    @piece = piece
    @board = board
  end

  def get_coordinates
    loop do
      coords = ask_for_coordinates

      next unless validate_coordinates_format(coords)
      if @board.add_piece(coords, @piece)
        break
      end
    end
  end

  private
  def ask_for_coordinates
    puts "#{@name}(#{@piece}), enter your coordinates in the form x,y"
    gets.strip.split(',').map(&:to_i)
  end

  def validate_coordinates_format(coords)
    if coords.is_a?(Array) && coords.size == 2
      true
    else
      puts 'Your coordinates are in the improper format!'
    end
  end
end
