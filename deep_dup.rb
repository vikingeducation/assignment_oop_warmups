class Array

  def deep_dup
    dup_array = []
    # if the item is not an array, return a duplicate of the item
    self.each do |item|
      if item.is_a? Array
        dup_array << item.dup
    # otherwise, for each item in array, deep duplicate its parts
      else
        item.each do |inner_item|
          dup_array << inner_item.deep_dup
        end
      end
    end
    dup_array
  end

end