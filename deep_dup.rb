class Array

  def deep_dup
    arr2 = self.dup
    arr2 = arr2.loop_through
    arr2
  end


  # Recursive loop if element is Array
  def loop_through
    self.map! do |element| 
      if !element.is_a?(Array)
        element
      elsif element.is_a?(Array)
        element = element.dup
        element = element.loop_through
      end
    end
  end

end


  # Tests

arr = [ [1, 2, [1]], [3, 4] ]

arr2 = arr.deep_dup
puts arr.object_id
puts arr2.object_id
puts ""
puts arr[0][2].object_id
puts arr2[0][2].object_id


deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
            ]

deeper_arr_change = deeper_arr.deep_dup
puts ""
puts deeper_arr[2][0][2].object_id
puts deeper_arr_change[2][0][2].object_id
