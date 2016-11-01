class Array

	def deep_dup
		new_arr = self.dup
		# print self.inspect + " " 
		# puts self.object_id
		# print new_arr.inspect + " "
		# puts new_arr.object_id 
		new_arr.each_with_index do |item, index| # self = [1,2,[3,4],5]
			if item.class == Array
        new_arr[index] = item.deep_dup
      end
		end
    new_arr
	end

end

arr = [ [ 1, [ 2, 3 ] ],[ 4, 5, 6],[ [ 7, 8, [ 9, 10 ]], [11, 12] ]]
test_arr = arr.deep_dup

# puts arr.object_id
# puts test_arr.object_id
# puts "----------------"
# puts arr[2].object_id
# puts test_arr[2].object_id
# puts "-----------"
# puts arr[2][0].object_id
# puts test_arr[2][0].object_id
