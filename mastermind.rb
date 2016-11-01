# mastermind class
  #initialize
    #win = false
    #turns = 12

  # play
    # turn counter that increments
    # unless win_condition
      # execute play
      # call render class
  # check_win
    # codebreaker input == secret
  # check_loss
    # number_of_turns == 12

# codebreaker class
  #initialize
    #codebreaker_input = ""

  # prompt for input
  # get input
  # confirming input format

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



# secret (computer) class
  #initialize
  def initialize
    # string colors (in constant)
    COLORS = %q[r g b y p o]
    #secret
    secret = []
  end

  # user input for secret
  def create_secret
    4.times { |item| secret[item] = COLORCONSTANT.sample }
  end


  # confirm correct colors
  # "close" and "exact" peg logic





# Codebreaker or Codemaker?
# > Codebreaker
# m = Mastermind.new(Codebreaker)