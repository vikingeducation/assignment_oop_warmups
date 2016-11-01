class Array
  def deep_dup
    self.map.with_index do |item, i|
      if item.is_a? (Array)
        item.deep_dup.dup
      else 
        item.dup rescue item
      end
    end
  end
end

