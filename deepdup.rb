class Array



	
	#check an item in an array
	#if that item is an array
		#check each item in an array
		#if an item is an array
			#check
	def deep_dup

		#change the number of loops depending on the nestedness of object

		
		# self.each do | layer1 |
		# 	if layer1.is_a? Array 

		# end

	original_array = self
	duplicated_array = []

	original_array.each do |item|
		if item.is_a?(Array)
		  item.deep_dup
 		  duplicated_array << item.dup
		end
	end
	duplicated_array

end




