def deep_dup(arr)

  arr.map do |x|
            if x.is_a? Array
              deep_dup(x)
            else
              if x.is_a?(Fixnum)
                y=x
              else
                x.dup
              end
            end
  end

end

def test (arr)

  duped_arr = deep_dup(arr)

  raise "Incorrect, objects are same" if arr.object_id == duped_arr.object_id
  2.times {|i| raise "Incorrect, objects are same" if arr[i].object_id == duped_arr[i]}

end

test([1,2, "d", ["d", "aaaa"], [3,4]])
# test()


array1 = [1,2, "d", ["d", "aaaa"], [3,4]]
array2 = deep_dup(array1)

puts array1[3][1].object_id
puts array2[3][1].object_id
