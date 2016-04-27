def deep_dup(array)

  deep_copy = []

  dupper = Proc.new do |value|
	if value.is_a? Fixnum
	  deep_copy << value
	else
	  deep_copy << value.dup
	end
  end

  array.each(&dupper)

  return deep_copy
end

## for multidimensional arrays

ddef deep_dup(array)

  deep_copy = []

  array.each do |value|
	if value.any? { |inner| inner.is_a? Array }
	  deep_copy << sub_arr(value)
	else
	  deep_copy << value.dup
	end
  end

  return deep_copy
end

def sub_arr(value)
  result = []
  value.each do |number|
  	if number.is_a? Fixnum
  	  result << number
  	elsif number.is_a? Array
  	  result << number.dup
  	end
  end
  return result
end

deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ]
            ]

puts deeper_arr.object_id
puts deeper_arr[0].object_id
puts deeper_arr[0][1].object_id
puts deeper_arr[1].object_id
puts deeper_arr[2].object_id
puts deeper_arr[2][0].object_id
puts deeper_arr[2][0][1].object_id
puts deeper_arr[2][1].object_id
puts

test = deep_dup(deeper_arr)

puts test.object_id
puts test[0].object_id
puts test[0][1].object_id
puts test[1].object_id
puts test[2].object_id
puts test[2][0].object_id
puts test[2][0][1].object_id
puts test[2][1].object_id
