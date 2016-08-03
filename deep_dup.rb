class Array
  def deep_dup
    array = Marshal.load( Marshal.dump(self))
    array
  end
end
