class Array
  def deep_dup(arr)
	  arr.map do |element|
		  if element.is_a?(Array)
			  element.deep_dup
		  end
	  end
  end
end