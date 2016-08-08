class Array
  def deep_dup
  	end_array = []
  	self.each do |x|
  		if x.is_a?(Array)
  		  end_array << x.deep_dup
  		elsif x.is_a?(Integer)
  		  end_array << x
  		else
  		  end_array << x.dup
  		end
  	end
  	end_array
  end
end

array = [[1, [2, 3]], [4, 5, 6], [[7, 8, [9, 10]], [11, 12]], ]
puts array[0].object_id
puts array[1].object_id
duper = array.deep_dup
puts duper[0].object_id
puts duper[1].object_id