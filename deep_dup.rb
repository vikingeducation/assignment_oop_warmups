class Array
  
  # Pseudocode:
  # 1. Create an output array to store duplicated items
  # 2. For every item in the input array, check whether it's an array
  # 3. If the item is not an array, dup it and add it to the output array
  # 4. If the item is an array, recursively call deep_dup on it, and push 
  # results to the output array
  def deep_dup
    deep_dups = []
    self.each do |item|
      duped_item = nil
      if item.is_a?(Array)
        duped_item = item.deep_dup
      else
        duped_item = item
      end
      
      deep_dups << duped_item
    end

    deep_dups
  end

  # method to recursively check the object ids of nested arrays
  def display_object_ids
    self.each.with_index do |item, index|
      puts "Item #{item} at index #{index} has ID #{item.object_id}"

      item.display_object_ids if item.is_a?(Array)
    end
  end
end
