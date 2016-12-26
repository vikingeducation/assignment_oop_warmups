class Array
  def deep_dup
    self.map do |element|
      element.is_a?(Array) ? element.deep_dup : element
    end
  end
end

###

arr = [ [1, 2], [3, 4] ]
duper = arr.deep_dup

p arr.object_id
p arr[0].object_id
p arr[1].object_id

p duper.object_id
p duper[0].object_id
p duper[1].object_id

puts 

deeper_arr = [ [ 1, [ 2, 3 ] ], [ 4, 5, 6], [ [ 7, 8, [ 9, 10 ]], [11, 12] ] ]
duper_deeper_arr = deeper_arr.deep_dup

p deeper_arr.object_id
p deeper_arr[2].object_id
p duper_deeper_arr.object_id
p duper_deeper_arr[2].object_id
