def deep_dup(arr)
	puts arr.object_id.inspect
puts 	arr.dup.object_id.inspect
puts arr[0].object_id
end


deep_dup([1,2,3,4])