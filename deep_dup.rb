
=begin
 Pass-by-reference is an important concept. Create a method deep_dup which
 returns a completely new object on a 2-or-more dimensional array. Ruby's
 simple dup method will be useful but not the only thing you use.
=end

base = [ ["red", "blue", "green"], [1, 2, 3] ]
puts "base's object id is #{base.object_id}"
puts "the object id of the first value of base is #{base[0].object_id}"

super_base = [
               [ 1, [ 2, 3 ] ],
               [ 4, 5, 6],
               [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]
puts "super_base's object id is #{super_base.object_id}"
puts "the object id of the first value of super_base is #{super_base[0].object_id}"

public
def deep_dup(array)
  dupped = []
    array.each do |tweak|
      dupped << tweak.dup
    end
    flipped = dupped.reverse
    new_thing = flipped.reverse
    new_thing
end

dupe = deep_dup(base)
puts "the dupe of base's object id is #{dupe.object_id}"
puts "the object id of the first value of base's dupe is #{dupe[0].object_id}"

duper = deep_dup(super_base)
puts "the dupe of super_base's object id is #{duper.object_id}"
puts "the object id of the first value of super_base's dupe is #{duper[0].object_id}"
