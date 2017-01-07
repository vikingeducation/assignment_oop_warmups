class Board
  def initialize
    @board = Array.new(3) { Array.new(3) }
  end

  def render
    puts
    @board.each do |row|
      row.each do |cell|
        cell.nil? ? print('-') : print(cell.to_s)
      end
      puts
    end
    puts
  end

  def add_piece(coords, piece)
    if piece_location_valid?(coords)
      @board[coords[0]][coords[1]] = piece
      true
    else
      false
    end
  end

  def winning_combination?(piece)
    winning_diagonal?(piece) ||
      winning_horizontal?(piece) ||
      winning_vertical?(piece)
  end

  def full?
    @board.all? do |row|
      row.none?(&:nil?)
    end
  end

  private

  def piece_location_valid?(coords)
    coordinates_available?(coords) if within_valid_coordinates?(coords)
  end

  def within_valid_coordinates?(coords)
    if (0..2).cover?(coords[0]) && (0..2).cover?(coords[1])
      true
    else
      puts 'Piece coordinates are out of bounds'
    end
  end

  def coordinates_available?(coords)
    if @board[coords[0]][coords[1]].nil?
      true
    else
      puts 'There is already a piece there!'
    end
  end

  def winning_diagonal?(piece)
    diagonals.any? do |diag|
      diag.all? { |cell| cell == piece }
    end
  end

  def winning_vertical?(piece)
    verticals.any? do |vert|
      vert.all? { |cell| cell == piece }
    end
  end

  def winning_horizontal?(piece)
    horizontals.any? do |horz|
      horz.all? { |cell| cell == piece }
    end
  end

  def diagonals
    [[@board[0][0], @board[1][1], @board[2][2]], [@board[2][0], @board[1][1], @board[0][2]]]
  end

  def verticals
    @board
  end

  def horizontals
    horizontals = []
    3.times do |i|
      horizontals << [@board[0][i], @board[1][i], @board[2][i]]
    end
    horizontals
  end
end
