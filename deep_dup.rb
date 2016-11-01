class Array

  def deep_dup
    duper = []
    # iterate through outter array
    self.each do |item|
      if item.is_a?(Array)
        item.deep_dup
      else
        duper << item
      end
    end
    duper
  end



end