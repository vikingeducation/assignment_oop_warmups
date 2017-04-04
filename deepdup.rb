arr = [ [1, 2], [3, 4] ]

deeper_arr = [
                [ 1, [ 2, 3 ] ],
                [ 4, 5, 6],
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
            ]

test_arr = [[1,2,3],[4,5,6]]
class Array
  def deep_dup
    output = []
    self.each do |item|
      if item.is_a?(Array)
        item.deep_dup
      end
      if item.is_a?(Fixnum)
        a = item
      else
        a = item.dup
      end
      output << a
    end
    output
  end
end

puts arr.object_id
puts arr[0].object_id
puts arr[1].object_id

duper = arr.deep_dup

puts duper.object_id
puts duper[0].object_id
puts duper[1].object_id

puts "Deeper array:"
puts deeper_arr.object_id
puts deeper_arr[2][0]
puts deeper_arr[2][0].object_id

deeper_duper = deeper_arr.deep_dup

puts deeper_duper[2][0]
puts deeper_duper[2][0].object_id

puts deeper_arr.to_s
puts deeper_duper.to_s

"testing:"
puts test_arr
