
=begin
 Pass-by-reference is an important concept. Create a method deep_dup which
 returns a completely new object on a 2-or-more dimensional array. Ruby's
 simple dup method will be useful but not the only thing you use.
=end

require "pry"

base = [ ["red", "blue", "green"], [1, 2, 3] ]
puts "\nbase's id is #{base.object_id}"
puts "\nid of 1st value in base is #{base[0].object_id}"
puts "\nid of 1st value in 1st array in base is #{base[0][0].object_id}"

super_base = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
             ]
puts "\nsuper_base's id is #{super_base.object_id}"
puts "\nid of 1st value in super_base is #{super_base[0].object_id}"
puts "\nid of 1st value in 1st array in super_base is #{super_base[0][0].object_id}"

public
def deep_dup(array)
  dupped = []
  array.each do |value|
    dupped << value.dup
  end
  dupped
end

dupe = deep_dup(base)
puts "\ndupe of base's id is #{dupe.object_id}"
puts "\nid of 1st value in base's dupe is #{dupe[0].object_id}"
puts "\nid of 1st value in 1st array in base's dupe is #{dupe[0][0].object_id}"

duper = deep_dup(super_base)
puts "\ndupe of super_base's id is #{duper.object_id}"
puts "\nid of the 1st value in super_base's dupe is #{duper[0].object_id}"
puts "\nid of 1st value in 1st array in super_base's dupe is #{duper[0][0].object_id}\n"

binding.pry
