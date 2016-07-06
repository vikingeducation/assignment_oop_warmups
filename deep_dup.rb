class Array

  def deep_dup
    arr = self.dup
    arr.map! do |x|
      if x.is_a?(Array) 
        x.deep_dup
        else
        x
      end
    end
    arr
  end
end



def tester
  arr = [
                  1, [ 1, [ 2, 3 ] ],
                  [ 4, 5, 6],
                  [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
               ]

  arr.object_id
  object1 = arr[0].object_id
  object2 = arr[1][1].object_id

  duper = arr.deep_dup

  duper.object_id
  duper1 = duper[0].object_id
  duper2 = duper[1][1].object_id

puts "#{object1}"

end