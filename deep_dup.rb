class Array
  def deep_dup
    self.map do |i|
      if i.is_a?(Array)
        i.deep_dup
      else
        i
      end
    end
  end
end
