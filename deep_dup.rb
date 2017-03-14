class Array
  def deep_dup
    self.map { |item| item.is_a?(Array) ? item.deep_dup : item }
  end
end

arr = [[1, 2], [3, 4]]

deeper_arr = [ 
  [1, [2, 3]], 
  [4, 5, 6], 
  [[7, 8, [9, 10]], [11, 12]], 
]

print arr.object_id
puts
print arr.deep_dup.object_id
puts
print deeper_arr.object_id
puts
print deeper_arr.deep_dup.object_id