class Array

  def deep_dup
    dup_array = []
    # if the item is not an array, return a duplicate of the item
    self.each do |item|
      if item.is_a? Array
        dup_array << item.deep_dup
    # otherwise, for each item in array, deep duplicate its parts
      else
        if item.class.superclass.superclass == Numeric
          dup_array << item
        else
          dup_array << item.dup
        end
      end
    end
    dup_array
  end

end