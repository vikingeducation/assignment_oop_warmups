class Array

  def deep_dup
    dup_array = []
    
    self.each do |item|
      (item.is_a? Array) ? dup_array << item.deep_dup : 
                         dup_array << dup_item(item)
    end
    dup_array
  end

  private
    def dup_item(item)
      if item.class.superclass.superclass == Numeric
        item
      else
        item.dup
      end
    end

end