def deep_dup(array)

  deep_copy = []

  dupper = Proc.new do |value|
	if value.is_a? Fixnum
	  deep_copy << value
	else
	  deep_copy << value.dup
	end
  end

  array.each(&dupper)

  return deep_copy
end
