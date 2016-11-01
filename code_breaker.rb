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
