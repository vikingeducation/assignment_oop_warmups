class Mastermind
  #initialize
  def initialize
    win_condition = false
    @current_turn = 1
    total_turns = 12

    instructions
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

class Codebreaker
  #initialize
  def initialize
    input = []

    get_input(input)
  end

  # get input
  def get_input(input)
    input = prompt

    is_valid?(input)
  end

  # prompt for input
  def prompt
    puts "Please enter guess # #{@current_turn} (ex: 'r g b y'):"
    gets.strip.split(" ")
  end

  # confirming input format
  def is_valid?(input)
    if input.all? { |color| Secret::COLORS.include?(color) } && input.length == 4
      true
    else
      puts "Invalid input, please use the format 'r g b y.'"
      get_input(input)
    end
  end
end


# board/render class
  #initialize
    # create initial []
  # nested array of previous turns
  # displays close and exact pegs
  # what it looks like
    # > r g b y
    # turn 1: r g b y  || exact: 1, close: 2
    # > y g b r
    # turn 1: r g b y  || exact: 1, close: 2
    # turn 2: y g b r  ||



class Secret
  COLORS = %W[r g b y p o]

  #initialize
  def initialize
#     # string colors (in constant)
#     #secret
#     secret = []
  end

#   # user input for secret
#   def create_secret
#     4.times { |item| secret[item] = COLORS.sample }
#   end

#   # confirm correct colors
#   def check_colors
#     COLORS.include?(input) # UNFINISHED
#   end

#   # "close" and "exact" peg logic
end

m = Mastermind.new(Codebreaker.new)