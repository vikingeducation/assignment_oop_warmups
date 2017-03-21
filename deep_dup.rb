# deep_dup.rb
class Array
  def deep_dup
    duper = []
    each do |ele|
      if ele.is_a? Array
        duper.push(ele.deep_dup)
      else
        duper.push(ele)
      end
    end
    duper
  end
end

system 'clear'

# arr = [[1, 2], [3, 4]]
arr = [[1, [2, 3]], [4, 5, 6], [[7, 8, [9, 10]], [11, 12]]]

duper = arr.deep_dup

puts 'og array'
puts arr.to_s
puts arr.object_id
puts arr[0].object_id
puts arr[1].object_id
puts 'duper'
puts duper.to_s
puts duper.object_id
puts duper[0].object_id
puts duper[1].object_id
