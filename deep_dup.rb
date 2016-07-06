def deep_dup(arr)
  arr.dup.map do |ele|
    case ele
    when Integer
      ele
    when Array
      ele.dup
    end
  end
end

array = [1,2,[2,3]]
dup_array = deep_dup(array)

p array[2].object_id == dup_array[2].object_id


def deeper_dup(arr)
  arr.map do |row|
    deep_dup row
  end
end


deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
             ]

deeper_dupped = deeper_dup deeper_arr

def test_deeper_dup(deeper_arr,deeper_dupped)
  deeper_arr.each_index do |i|
    deeper_arr[i].each_index do |j|
      case deeper_arr[i][j]
      when Array
        return false if deeper_arr[i][j].object_id == deeper_dupped[i][j].object_id
      end
    end
  end
  true
end

p test_deeper_dup(deeper_arr,deeper_dupped)