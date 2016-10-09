class Array
  def deep_dup(rec_arr = nil)
    self.map do |arr1|
      if arr1 != arr1.flatten
        arr1.map {|x| x.dup}
      else
        arr1 = arr1.dup
      end
    end
  end
end


# class Array
#   def deep_dup(rec_arr = nil)
#     self.map do |arr1| 
#       if arr1 != arr1.flatten
#         deep_dup(arr1)
#       else
#         arr1.dup
#       end
#     end
#   end
# end




# deeper_arr = [ [ 1, [ 2, 3 ] ], [ 4, 5, 6], [ [ 7, 8, [ 9, 10 ]], [11, 12] ] ]
