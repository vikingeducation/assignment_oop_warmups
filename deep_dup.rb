class Object
  def deep_dup
    puts "array object ID is #{self.object_id}"
    (0..self.length - 1).each do |x|
      puts "array[#{self[x]}] object ID is #{self[x].object_id}"
    end

    copy = Marshal.load(Marshal.dump(self))
    puts "copy object ID is #{copy.object_id}"
    (0..copy.length - 1).each do |x|
      puts "array[#{copy[x]}] object ID is #{copy[x].object_id}"
    end
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
