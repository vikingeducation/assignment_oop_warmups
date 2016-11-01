def deep_dup(base_array)
  new_array = base_array.dup
  base_array.each_with_index do |item, index|
    if item.is_a?(Array)
      deep_dup(item)
    else 
      new_array << base_array.dup
    end
  end
  print "this is a separate instance \n"
  print new_array
  print "\n"
  print base_array
end

deep_dup([[1,2],[3,[4]]])

