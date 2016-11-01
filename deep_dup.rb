def deep_dup(multi_d_arr)
	new_arr = multi_d_arr.dup

	arr_to_check = new_arr # new_arr.dup
	while arr_to_check[0].class == Array
		arr_to_check.map! do |element|
			element.dup
		end
		arr_to_check = arr_to_check[0]
	end
end