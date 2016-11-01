require 'pry'

class Array

  def deep_dup

    # loop over each item in outter most array
    map do |item|
      # if item is an array
      if item.is_a?(Array)
        item.deep_dup
      else
        item
      end
    end

  end

end


# deeper_arr = [
#                 [ 1, [ 2, 3 ] ],
#                 [ 4, 5, 6],
#                 [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
#             ]

# p deeper_arr
# p deeper_arr.object_id
# p deeper_arr[0].object_id
# p deeper_arr[0][1].object_id
# p deeper_arr[1].object_id

# puts ""
# duper = deeper_arr.deep_dup

# p duper
# p duper.object_id
# p duper[0].object_id
# p duper[0][1].object_id
# p duper[1].object_id

# duper = []
# p deeper_arr



