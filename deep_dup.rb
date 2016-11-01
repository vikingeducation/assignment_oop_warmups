class Array

	def deep_dup
		new_arr = []
		self.each do |item| # self = [1,2,[3,4],5]
			if item.class == Array
        puts "array"
        new_arr << item.dup
      else
        puts "not an array"
			  new_arr << item
      end
		end
	end

end

arr = [1,2,[[3],4],5]
test_arr = arr.deep_dup

puts arr.object_id
puts test_arr.object_id

puts arr[2].object_id
puts test_arr[2].object_id

puts arr[2][0].object_id
puts test_arr[2][0].object_id
