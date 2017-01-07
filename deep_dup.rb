class Array
  def deep_dup
    Marshal.load(Marshal.dump(self.dup))
  end
end
