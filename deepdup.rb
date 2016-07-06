class Array

  def deep_dup

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
end

