
=begin
 Pass-by-reference is an important concept. Create a method deep_dup which
 returns a completely new object on a 2-or-more dimensional array. Ruby's
 simple dup method will be useful but not the only thing you use.
=end

require "pry"

base = [ ["red", "blue", "green"], [1, 2, 3] ]

binding.pry
