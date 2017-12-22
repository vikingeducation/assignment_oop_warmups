
=begin
 Pass-by-reference is an important concept. Create a method deep_dup which
 returns a completely new object on a 2-or-more dimensional array. Ruby's
 simple dup method will be useful but not the only thing you use.
=end

require "pry"

a = [
       [ 1, [ 2, 3 ] ],
       [ 4, 5, 6],
       [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
    ]

=begin
b = [ [ "red" ],
      "blue",
      "green",
      [ 1, [ 2 ], 3 ]
    ]
=end

public
def deep_dup
  map do |value|
    if value.is_a?(Array)
      value.dup.deep_dup.dup
    else
      value.dup
    end
  end
end

c = a.deep_dup
#d = b.deep_dup

binding.pry







# spacing
