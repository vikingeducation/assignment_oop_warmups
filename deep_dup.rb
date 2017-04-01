class Array
  def deep_dup
    self.map { |el| el.dup }
  end
end
