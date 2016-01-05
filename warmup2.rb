class Array

  def deep_dup(new_arr=[])
  	

    self.each do |sub_a|

    	if sub_a.class == Array && sub_a.all? {|item| item.class != Array}

    		new_arr << sub_a

    	else 
            sub_a.deep_dup(new_arr)
    	end	
    end    
    new_arr
  end
end




deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
            ]
x = deeper_arr.deep_dup
puts x.inspect            
