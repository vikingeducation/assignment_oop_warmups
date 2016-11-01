class Array

  def deep_dup
    self.map do |element|
      next unless element.class == Array
      element.deep_dup
    end

  end

end


a = [[[1]]]

new_a = a.deep_dup

puts a.object_id

puts new_a.object_id

puts a[0][0].object_id

puts new_a[0][0].object_id