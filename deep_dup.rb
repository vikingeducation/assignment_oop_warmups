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

