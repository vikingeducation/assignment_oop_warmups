class Array
  def deep_dup
    map { |i| i.is_a?(Array) ? i.deep_dup : i }
  end
end
