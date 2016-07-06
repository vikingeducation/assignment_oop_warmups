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
  object1 = arr[1].object_id
  object2 = arr[1][1].object_id
  object3=arr[3][0][2].object_id

  duper = arr.deep_dup

  duper.object_id
  duper1 = duper[1].object_id
  duper2 = duper[1][1].object_id
  duper3= duper[3][0][2].object_id

puts object1 !=duper1
puts object2 !=duper2
puts object3 !=duper3
puts "Object1: #{object1} Duper1: #{duper1}"
puts "Object2: #{object2} Duper2: #{duper2}"
puts "Object3: #{object3} Duper3: #{duper3}"
end

tester