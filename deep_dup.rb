class Array

	def deep_dup
		new_arr = []
		self.each do |item| # self = [1,2,[3,4],5]
			if item.class == Array
			new_arr << item
			new_arr << item.dup if item.class == "Array"
		end
	end

end