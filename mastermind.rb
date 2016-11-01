class Mastermind
  #initialize
  def initialize(player)
    win_condition = false
    @current_turn = 1
    total_turns = 12
    instructions
    Codebreaker.new
    #Secret.new

  end

  def instructions
    puts "Welcome to Mastermind!"
    puts "You have 12 turns to guess the 4 color code."
    puts "There are 6 possible colors: Red, Green, Blue, Yellow, Purple, Orange."
    puts "Enter your guesses in the format 'r g b y.'"
  end

  # play
    # turn counter that increments
    # unless win_condition
      # execute play
      # call render class
  # check_win
    # codebreaker input == secret
  # check_loss
    # number_of_turns == 12
end