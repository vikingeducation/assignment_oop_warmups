class Array

  def deep_dup

    return self.dup
    return self.deep_dup if self.is_a?(Array)

  end
end

arr = [ [1, 2], [3, 4] ]
arr2 = arr.deep_dup

puts arr.object_id
puts arr2.object_id
puts arr[0].object_id
puts arr2[0].object_id

deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
            ]

