class Array

  def deep_dup
    new_arr = []
    self.each do |obj|
      if obj.is_a?(Array)
        new_arr << obj.deep_dup
      else
        new_arr << obj
      end
    end
    new_arr
  end

end