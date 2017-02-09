class Object
  def deep_dup
    puts self.object_id
    copy = Marshal.load(Marshal.dump(self))
    puts copy.object_id
  end
end


arr = [ [1, 2], [3, 4] ]
arr.deep_dup

 deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]
deeper_arr.deep_dup
