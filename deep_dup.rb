class Array
  def deep_dup
    self.map do |item|
      if item.is_a?(Array)
        item.deep_dup
      else
        item
      end
    end
  end
end

[1,[2,3]].deep_dup
