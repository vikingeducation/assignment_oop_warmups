class Array

  def deep_dup
    # Create a new array
    output = []
    # loop over each item in outter most array
    each do |item|
      temp
      # if the class of this item in an array
        # then recurse
      # otherwise dup that item
      # push it to a new array
    # return that new array
    end
  end

end

arr = [[1,2],[3,4]]
puts arr.object_id

puts ""

duper = arr.deep_dup
puts arr.object_id