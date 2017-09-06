arr = [ [1, 2], [3, 4] ]

# Verify their object_ids
arr.object_id
#=> 70349854069800
arr[0].object_id
#=> 70349854069960
arr[1].object_id
#=> 70349854069840

class Array
  def deep_dup
    return self.dup
  end
end

duper = arr.deep_dup

# Verify they are different ids
duper.object_id
#=> 70349854047610
duper[0].object_id
#=> 70349854041100
duper[1].object_id
#=> 70342030583020

deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]

p deeper_arr.deep_dup

# verify they are different arrays 
p deeper_arr.object_id

p deeper_arr.deep_dup.object_id
