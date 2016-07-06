class Array

  def deep_dup
    dup_array = []
    
    self.each do |item|
      
      if item.is_a? Array
        dup_array << item.deep_dup
      else
        begin 
          dup_array << item.dup
        rescue TypeError
          dup_array << item
        end
      end

    end
    dup_array
  end

end