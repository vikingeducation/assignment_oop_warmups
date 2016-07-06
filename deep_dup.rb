def deep_dup(arr)

  arr.map do |x|
            if x.is_a? Array
              deep_dup(x)
            else

            end
  end

end

def test

  arr = [[1,2], [3,4]]
  duped_arr = deep_dup(arr)

  raise "Incorrect, objects are same" if arr.object_id == duped_arr.object_id
  2.times {|i| raise "Incorrect, objects are same" if arr[i].object_id == duped_arr[i]}

end

test
