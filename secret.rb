class Secret
  COLORS = %W[r g b y p o]

  #initialize
  def initialize
    #secret
    secret = []
    create_secret
  end

  # user input for secret
  def create_secret
    p 4.times { |item| secret[item] = COLORS.sample }
  end

  # confirm correct colors
  def check_colors
    COLORS.include?(input) # UNFINISHED
  end

  # "close" and "exact" peg logic
end