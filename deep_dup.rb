class Array
  def deep_dup
    map do |item|
      if item.is_a?(Array)
        item.deep_dup
      else
        item
      end
    end
  end
end
