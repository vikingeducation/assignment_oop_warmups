class Array
  def deep_dup
    arr = self
    dup_arr = []
    arr.each do |item|
      if item.instance_of?(Array)
        # Recursive call
        item.deep_dup
        dup_arr << item.dup
      end
    end
    dup_arr
  end
end

# arr = [[1,2], [3,4]]
# p arr.object_id
# p arr[0].object_id
# p arr[1].object_id
# puts "-----"
# dup_arr = arr.deep_dup
# p dup_arr
# p dup_arr.object_id
# p dup_arr[0].object_id
# p dup_arr[1].object_id

# puts "======"
# deeper_arr = [
#                 [ 1, [ 2, 3 ] ],
#                 [ 4, 5, 6],
#                 [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
#             ]
# deeper_dup_arr = deeper_arr.deep_dup
# p deeper_arr[0].object_id
# p deeper_dup_arr[0].object_id