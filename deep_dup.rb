class Array
  def deep_dup
    self.map do |arr1|
      arr1.is_a?(Array) ? arr1.deep_dup : arr1
    end
  end
end



# class Array
#   def deep_dup
#     Marshal.load( Marshal.dump(self))
#   end
# end

# deeper_arr = [ [ 1, [ 2, 3 ] ], [ 4, 5, 6], [ [ 7, 8, [ 9, 10 ]], [11, 12] ] ]
