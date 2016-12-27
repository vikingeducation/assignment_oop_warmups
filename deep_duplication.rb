# Pass-by-reference is an important concept. Create a method deep_dup which returns a completely new object on a 2-or-more dimensional array. Ruby's simple dup method will be useful but not the only thing you use.
def deep_dup(original)

  # Using the Marshal class, which is normally used for serialization, you can create a ‘deep copy’ of an object.
  duper = Marshal.load(Marshal.dump(original))

  # The dup method only creates a shallow copy of the object
  # duper = original.dup

  # puts "original #{original.object_id}" 
  # puts "original array pos 0 #{original[0].object_id}" 
  # puts "original array pos 1 #{original[1].object_id}" 

  # puts "duper #{duper.object_id}" 
  # puts "duper array pos 0 #{duper[0].object_id}" 
  # puts "duper array pos 1 #{duper[1].object_id}" 
end


# Tests 
# arr = [ [1, 2], [3, 4] ]

# deeper_arr = [ 
#                 [ 1, [ 2, 3 ] ], 
#                 [ 4, 5, 6], 
#                 [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
#             ]