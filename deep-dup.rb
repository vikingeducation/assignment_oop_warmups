def deep_dup(arr)
  
  deep_arr = []
  
  if elem.all? { |arr| !elem.is_a?(Array) } 
    return arr.dup
  end
  
  arr.each do |elem|
    deep_arr << deep_dup(elem)
  end

end