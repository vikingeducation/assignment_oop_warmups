class Array

def deep_dup
    self.map do |child|
      if !child.is_a? Array
        child
      elsif self.no_child?
        child.dup
      else
        child.deep_dup
      end
    end
  end

def no_child?
  return false if !self.all? {|x| !(x.is_a? Array)}
end

end
