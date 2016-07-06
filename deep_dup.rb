def deep_dup(array)
  return_array = []
  array.each do |item|
    if item.is_a?(Array)
      return_array << deep_dup(item)
    else
      return_array << item
    end
  end
  return_array
end


def object_method(array)
  inside_arrays = array.select { |item| item.is_a?(Array) }
  inside_arrays.map { |item| item.object_id }
end


weird_array = [ [1, 2, [2, 7, 8, [1, 2]]], [3, 4] ]

p flatten_object_method(deep_dup(weird_array))
p flatten_object_method(weird_array)
