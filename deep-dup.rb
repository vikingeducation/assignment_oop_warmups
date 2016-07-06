class Array

  def deep_dup
    map { |elem| elem.is_a?(Array) ? elem.deep_dup : elem}
  end
end

arr = [ [1, 2], [3, 4] ]
deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]

arr.each{|item| puts item.object_id}

new_arr = arr.deep_dup

new_arr.each{|item| puts item.object_id}


deeper_arr.each{|item| puts item.object_id}

newer_arr = deeper_arr.deep_dup

newer_arr.each{|item| puts item.object_id}

 puts newer_arr.inspect
