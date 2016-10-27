# Object Oriented warmups II

# Warmup 2 -- Deep Dup

# Simple nested array one level deep

def deep_dup(arr)
  duper_arr = arr.dup.map { |item| item * 1 }
end

# main

arr = [ [1,2], [3,4] ]

puts "\n"
puts "DEEP DUP METHOD"
puts "\n"

puts "test BEFORE deep dup method"
puts "\n"
puts "array #{arr} object id = #{arr.object_id}"
puts "array[0] object id = #{arr[0].object_id}"
puts "array[1] object id = #{arr[1].object_id} \n"

# deep dup method
duper = deep_dup(arr)

puts "test AFTER deep dup method"
puts "\n"
puts "duper #{duper} object id = #{duper.object_id}"
puts "duper[0] object id = #{duper[0].object_id}"
puts "duper[1] object id = #{duper[1].object_id}"

puts "\n\n"

# End

######################################################

# Complex nested array several levels deep

def deeper_dup(arr)
  duper_deeper_arr =  arr.dup.map do |item|
                        if item.kind_of?(Array)
                          deeper_dup(item)
                        else
                          item = item * 1
                        end
                      end
  duper_deeper_arr                    
end



# main

arr = [ 
          [ 1, [2, 3] ],
          [ 4, 5, 6],
          [ [ 7, 8, [9, 10 ]], [11,12] ],
      ]  

puts "DEEPER DUP METHOD"
puts "\n"

puts "test BEFORE deeper dup method"
puts "\n"
puts "array #{arr} object id = #{arr.object_id}"

puts "array[0] object id = #{arr[0].object_id}"
puts "array[0][1] object id = #{arr[0][1].object_id}"  

puts "array[1] object id = #{arr[1].object_id}"

puts "array[2] object id = #{arr[2].object_id}"
puts "array[2][0] object id = #{arr[2][0].object_id}"  
puts "array[2][0][2] object id = #{arr[2][0][2].object_id}"  
puts "array[2][1] object id = #{arr[2][1].object_id}" 

puts "\n" 


# deeper dup method
deeper_duper = deeper_dup(arr)


puts "test AFTER deeper dup method"
puts "\n"
puts "deeper_duper #{arr} object id = #{deeper_duper.object_id}"

puts "deeper_duper[0] object id = #{deeper_duper[0].object_id}"
puts "deeper_duper[0][1] object id = #{deeper_duper[0][1].object_id}"  

puts "deeper_duper[1] object id = #{deeper_duper[1].object_id}"

puts "deeper_duper[2] object id = #{deeper_duper[2].object_id}"
puts "deeper_duper[2][0] object id = #{deeper_duper[2][0].object_id}"
puts "deeper_duper[2][0][2] object id = #{deeper_duper[2][0][2].object_id}"  
puts "deeper_duper[2][1] object id = #{deeper_duper[2][1].object_id}"

puts "\n" 

# End
