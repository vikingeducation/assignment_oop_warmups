class Object

  def deep_dup
    new_arr = []

    self.each do |i|
      if i.class == Array
        new_arr.push(i.deep_dup.dup)
      else
        i
      end
    end

    new_arr
  end

end

