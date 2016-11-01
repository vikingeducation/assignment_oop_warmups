class Array

  def deep_dup
    # Create a new array
    output = []
    # loop over each item in outter most array
    each do |item|
      output << recurse(item)

    end
    output
  end

  def recurse(item)
    new_output = []
    # if the class of this item in an array

    if item.is_a?(Array)
      item.each do |i|
        # then recurse
        recurse(i)
      end
    else
      # otherwise dup that item
      # push it to a new array
      new_item = item
      # return that new array
      new_output << new_item
    end
    new_output
  end


end

arr = [[1,2],[3,4]]
p arr
puts arr.object_id

puts ""

duper = arr.deep_dup
p duper
puts duper.object_id

# [[1, 2], [3, 4]]
# 4631340
#
# [[], []]
# 4624060





deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]
