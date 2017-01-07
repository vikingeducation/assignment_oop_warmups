require_relative 'player'
require_relative 'board'

class TicTacToe
  def initialize
    @board = Board.new

    @player_x = Player.new('Madame X', :x, @board)
    @player_y = Player.new('Mister Y', :y, @board)

    @current_player = @player_x
  end

  def play
    loop do
      @board.render

      @current_player.get_coordinates

      break if check_game_over

      switch_players
    end
  end

  private
  def check_game_over
    check_victory || check_draw
  end

  def check_victory
    if @board.winning_combination?(@current_player.piece)
      puts "Congratulations #{@current_player.name}, you win"
      true
    else
      false
    end
  end

  def check_draw
    if @board.full?
      puts "Bummer, you've drawn..."
      true
    else
      false
    end
  end

  def switch_players
    @current_player = if @current_player == @player_x
                        @current_player = @player_y
                      else
                        @current_player = @player_x
                      end
  end
end
