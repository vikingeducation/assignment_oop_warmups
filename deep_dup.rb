class Array



  def deep_dup

=begin

    # code for the 2-D array

    puts "Self's object ID => #{self.object_id}."
    
    self.each do |e| 
      puts "Inner arrays of self object IDs => #{e.object_id}."
    end


    duper = self.map do |e|
      e.dup
    end

    puts "\n\nDuper's object ID => #{duper.object_id}."

    duper.each do |e| 
      puts "Inner arrays of Duper object IDs => #{e.object_id}."
    end


=end

  # code for the nested array - need recursion for arrays of unknown depth????

    puts "Get the original object IDs."

    p self.object_id
    puts"\n"

    self.each do |first_element|

      if first_element.is_a?(Array)
        p first_element.object_id

        first_element.each do |second_element|

          if second_element.is_a?(Array)
            p second_element.object_id

            second_element.each do |third_element|

              if third_element.is_a?(Array)
                p third_element.object_id

              else
                #do nothing
              end
            end

          else
            #do nothing
          end
        end
      else
        #do nothing
      end
    end


    puts "\n\nSet the Duper object IDs."

    puts"\n"

    duper = self.map do |first_element|
      
      if first_element.is_a?(Array)
        first_element.dup

        first_element.map do |second_element|

          if second_element.is_a?(Array)
            second_element.dup

            second_element.map do |third_element|

              if third_element.is_a?(Array)
                third_element.dup

              else
                #do nothing
              end
            end

          else
            #do nothing
          end
        end
      else
        #do nothing
      end
    end


    puts "Get the duper object IDs."

    p duper.object_id
    puts"\n"

    duper.each do |first_element|

      if first_element.is_a?(Array)
        p first_element.object_id

        first_element.each do |second_element|

          if second_element.is_a?(Array)
            p second_element.object_id

            second_element.each do |third_element|

              if third_element.is_a?(Array)
                p third_element.object_id

              else
                #do nothing
              end
            end

          else
            #do nothing
          end
        end
      else
        #do nothing
      end
    end


  end

end

a = [ [1, 2, 3, 4], [5, 6, 7, 8] ]
a.deep_dup

puts "\n\n\n"
b = [ 
      [ 1, [ 2, 3 ] ], 
      [ 4, 5, 6], 
      [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
    ]


b.deep_dup