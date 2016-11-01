class Array

	def deep_dup
		map do |item| 
			if item.is_a?(Array)
        item.deep_dup
      else
      	item
      end
		end
	end

end

arr = [ [ 1, [ 2, 3 ] ],[ 4, 5, 6],[ [ 7, 8, [ 9, 10 ]], [11, 12] ]]
test_arr = arr.deep_dup

puts arr[0][1][0].object_id
puts test_arr[0][1][0].object_id