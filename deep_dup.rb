class Array

  def deep_dup(array)

    return 
    result_arr = []

    array.each do |ele|
      deep_dup(ele) if ele.is_a?(Array)
    end
  end
end


deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
            ]

puts deep_dup(deeper_arr)