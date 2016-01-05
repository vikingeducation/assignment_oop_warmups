class Array

  def deep_dup

    new_array = []
    # return self.dup if self.all? { |item| item.class != Array }
    self.each do |sub_a|
      if sub_a.class != Array
        new_array.push(sub_a)
      else
        new_array.push(sub_a.deep_dup)
      end
    end

    new_array
  end

end

deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]
#puts deeper_arr.object_id
puts deeper_arr[0][1].object_id

x = deeper_arr.deep_dup
#puts x.inspect.object_id
puts x[0][1].object_id
