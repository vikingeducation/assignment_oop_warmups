class Array
  def deep_dup
    new_array = []
    self.each do |inner_array|
      new_array << inner_array.dup
    end
    new_array
  end 
end


arr = [ [1, 2], [3, 4] ]
print arr
puts arr.object_id
puts arr[0].object_id
puts arr[1].object_id


duper = arr.deep_dup
print duper
puts duper.object_id
puts duper[0].object_id
puts duper[1].object_id

deeper_arr = [
                 [ 1, [ 2, 3]],
                 [ 4, 5, 6],
                 [ [ 7, 8, [ 9, 10 ] ], [11, 12] ],
]
print deeper_arr
puts deeper_arr.object_id
puts deeper_arr[0].object_id
puts deeper_arr[1].object_id

new_deeper_arr = deeper_arr.deep_dup
print new_deeper_arr
puts new_deeper_arr.object_id
puts new_deeper_arr[0].object_id
puts new_deeper_arr[1].object_id
