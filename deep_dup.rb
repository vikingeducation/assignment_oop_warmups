# deep_dup.rb
class Array
  def deep_dup
    data = Marshal.dump(self)
    Marshal.load(data)
  end
end

