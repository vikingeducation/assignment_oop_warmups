class Array

	def deep_dup
		new_arr = deep_dub_recursive self.dup
	end

	def deep_dub_recursive (array_to_dup)
		if array_to_dup.any? { |item| item.is_a?(Array)}
			array_duped = array_to_dup.dup
			array_duped.each_with_index do |item, index|
				if item.is_a? (Array)
					array_duped[index] = deep_dub_recursive array_duped[index]
				end
			end
			array_duped
		else
			array_duped = array_to_dup.dup
			array_duped
		end
	end
end

deeper_arr = [ 
                [ 1, [ 2, 3 ] ], 
                [ 4, 5, 6], 
                [ [ 7, 8, [ 9, 10 ]], [11, 12] ], 
            ]

duper = deeper_arr.deep_dup
p duper

def check_object_ids (deeper_arr, duper)
	puts "####################"
	p "Deeper Arr #{deeper_arr}"
	p "Duper      #{duper}"
	deeper_arr.each_with_index do |item, index|
		if item.is_a? (Array)
			if item.object_id == duper[index].object_id
				#puts "item is #{item}"
				puts "#{index} : Failed #{item.object_id} == #{duper[index].object_id}"
			else
				#puts "item is #{item}"
				puts "#{index} : Good   #{item.object_id} != #{duper[index].object_id}"
			end
		end
	end
end

check_object_ids(deeper_arr[2][0], duper[2][0])