class Array



  def deep_dup

    puts "Self's object ID => #{self.object_id}."
    
    self.each do |e| 
      puts "Inner arrays of self object IDs => #{e.object_id}."
    end

    new_arr = self.dup
    puts "New_arr's object ID => #{new_arr.object_id}."

    new_arr.each do |e| 
      puts "Inner arrays of self object IDs => #{e.object_id}."
    end

    puts "***** Now I'm gonna try and deep-dup these bad boys! *****"

    

    
  end





end

a = [ [1, 2, 3, 4], [5, 6, 7, 8] ]
a.deep_dup