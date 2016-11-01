class Array

  def deep_dup
    self.map do |item|
      if item.is_a?(Array)
        item.deep_dup
      elsif item.is_a?(Fixnum)
        item
      else
        item.dup
      end
    end
  end

end


arr = [ [1, 2], [3, 4] ]

# Verify their object_ids
p arr.object_id
#=> 70349854069800
p arr[0].object_id
#=> 70349854069960
p arr[1].object_id
#=> 70349854069840

p duper = arr.deep_dup

# Verify they are different ids
p duper.object_id
#=> 70349854047610
p duper[0].object_id
#=> 70349854041100
p duper[1].object_id
#=> 70342030583020

deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]

p deeper_arr.deep_dup