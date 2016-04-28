class Array

  def deep_dup

    deep_copy = []

    self.each do |value|
  	if value.any? { |inner| inner.is_a? Array }
  	  deep_copy << sub_arr(value)
  	else
  	  deep_copy << value.dup
  	end
    end

    return deep_copy
  end

  def sub_arr(value)
    result = []
    value.each do |number|
    	if number.is_a? Fixnum
    	  result << number
    	elsif number.is_a? Array
    	  result << number.dup
    	end
    end
    return result
  end
  
end
