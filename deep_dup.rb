class Array
  def deep_dup
    result = []
    self.each do |item|
      if item.is_a?(Array)
        # if item is an array, recursively call deep_dup method on it
        duped = item.deep_dup
      else
        duped = item
      end

      result << duped
    end
    result
  end

end