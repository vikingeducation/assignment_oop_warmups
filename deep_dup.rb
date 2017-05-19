class Array
  def deep_dup
    # new = dup
    map { |i| i.is_a?(Array) ? i.deep_dup : i.dup }
  end
end
