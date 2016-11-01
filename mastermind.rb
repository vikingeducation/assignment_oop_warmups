# codebreaker class
  # prompt for input
  # confirming input format

# mastermind class
  # play
    # turn counter that increments
    # unless win_condition
      # execute play
  # check_win
    # codebreaker input == secret
  # check_loss
    # number_of_turns == 12

# board/render class
  # nested array of previous turns
  # displays close and exact pegs
  # what it looks like
    # > r g b y
    # turn 1: r g b y  || exact: 1, close: 2
    # > y g b r
    # turn 1: r g b y  || exact: 1, close: 2
    # turn 2: y g b r  ||



# secret (computer) class
  # create_secret
    # user input for secret
    # 4.times { COLORCONSTANT.sample }

  # string colors (in constant)
  # confirm correct colors
  # "close" and "exact" peg logic





# Codebreaker or Codemaker?
# > Codebreaker
# m = Mastermind.new(Codebreaker)