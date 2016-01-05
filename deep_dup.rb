class Array

  def deep_dup

    result = []
    arr = self.dup

    arr.each do |ele|
      result << ele.deep_dup if ele.is_a?(Array)
    end

    return result
  end
end

# arr = [ [1, 2], [3, 4] ]
# arr2 = arr.deep_dup

# puts arr.object_id
# puts arr2.object_id
# puts arr[0].object_id
# puts arr2[0].object_id

deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
            ]

arr3 = deeper_arr.deep_dup

puts arr3.object_id
puts deeper_arr.object_id
puts arr3[1].object_id
puts deeper_arr[1].object_id