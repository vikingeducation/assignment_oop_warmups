class Array
  def deep_dup
    new_arr = []
    self.each_with_index do |elem, index|
      if elem.is_a?(Array)
        new_arr << elem.deep_dup
      else
        new_arr << elem
      end
    end
    new_arr
  end
end

def recursive_id(obj)
  obj.each_with_index do |elem, index|
    if elem.is_a?(Array)
      puts elem.object_id
      recursive_id(elem)
    end
  end
end

arr = [[1,2,3],[4,5,6,[2]]]
recursive_id(arr)

arr_dup = arr.deep_dup
recursive_id(arr_dup)