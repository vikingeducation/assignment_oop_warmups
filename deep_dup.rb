 class Array
   def deep_dup
     self.map do |child_element|
       if !child_element.is_a? Array
         child_element
       elsif self.no_child_array?
         child_element.dup
       else
         child_element.deep_dup
       end
     end
   end

   def no_child_array?
     return false if !self.all? { |x| !(x.is_a? Array) }
     true
   end

 end
