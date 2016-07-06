class Array
	def deep_dup
		self.map do |ele|
			if ele.is_a?(Array)
				p "Before #{ele.object_id}"
				ele.deep_dup
			else
				ele
			end
		end
	end
end

array = [
			[ 1, [ 2, 3 ] ], 
            [ 4, 5, 6], 
            [ [ 7, 8, [ 9, 10 ]], [11, 12] ]
            ]

new_array = array.deep_dup
p new_array[0].object_id == array[0].object_id