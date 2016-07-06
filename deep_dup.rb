# deep_dup.rb
class Array
  def deep_dup
    data = Marshal.dump(self)
    Marshal.load(data)
  end

  def deep_dup_two
    temp_arr = []
    self.each do |item|
      temp_arr << (item.is_a?(Integer) ? item : item.deep_dup_two)
    end
    temp_arr
  end
end

arr = [ [1, [1,2]], [3, 4] ]

duper = arr.deep_dup_two

puts arr[0][1].equal?(duper[0][1])

