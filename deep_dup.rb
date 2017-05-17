# Create a method deep_dup which returns a completely new object
# on a 2-or-more dimensional array. Ruby's simple dup method will
# be useful but not the only thing you use.

class Array
  def deep_dup
    self.map do |item|
      item.is_a?(Array) ? item.deep_dup : item
    end
  end
end



deeper_arr = [ 
  [1, [2, 3]], 
  [4, 5, 6], 
  [[7, 8, [9, 10]], [11, 12]], 
]

puts "Deeper array:"
p deeper_arr

puts

puts "Address of deeper_arr: #{deeper_arr.object_id}"
puts "Address of deeper_arr[0]: #{deeper_arr[0].object_id}"
puts "Address of deeper_arr[0][1]: #{deeper_arr[0][1].object_id}"

puts

puts "Duplicating deeper array..."
deeper_duper = deeper_arr.deep_dup
p deeper_duper

puts

puts "Address of deeper_duper: #{deeper_duper.object_id}"
puts "Address of deeper_duper[0]: #{deeper_duper[0].object_id}"
puts "Address of deeper_duper[0][1]: #{deeper_duper[0][1].object_id}"
