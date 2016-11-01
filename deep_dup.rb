class Array
	def deep_dup
		self.map do |element|
			next unless element.class == Array.
			element.deep_dup
		end
	end
end