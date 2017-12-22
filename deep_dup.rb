
=begin
 Pass-by-reference is an important concept. Create a method deep_dup which
 returns a completely new object on a 2-or-more dimensional array. Ruby's
 simple dup method will be useful but not the only thing you use.

 Sidenote: you can't .dup/.clone numbers, don't even try
=end

numerals = [
              [ 1, [ 2, 3 ] ],
              [ 4, 5, 6],
              [ [ 7, 8, [ 9, 10 ] ], [11, 12] ]
           ]

words = [
           [ "red", [ "orange", [ "yellow", [ "green", [ "blue", [ "indigo", [ "violet" ] ] ] ] ] ] ]
        ]

public
def deep_dup
  dupped = self.clone
  dupped.map! do |value|
    if value.is_a?(Array)
      value.deep_dup
    else
      value.dup
    end
  end
  dupped
end
numerals_dupe = numerals.deep_dup
words_dupe = words.deep_dup

puts "\nnumerals = #{numerals}"
puts "\nnumerals_dupe = #{numerals_dupe}"
puts "\nnumerals id = #{numerals.object_id}"
puts "\nnumerals_dupe id = #{numerals_dupe.object_id}"
puts "\nnumerals[2] id = #{numerals[2].object_id}"
puts "\nnumerals_dupe[2] id = #{numerals_dupe[2].object_id}"
puts "\nnumerals[2][0][2] id = #{numerals[2][0][2].object_id}"
puts "\nnumerals_dupe[2][0][2] id = #{numerals_dupe[2][0][2].object_id}"

puts "\nwords = #{words}"
puts "\nwords_dupe = #{words_dupe}"
puts "\nwords id = #{words.object_id}"
puts "\nwords_dupe id = #{words_dupe.object_id}"
puts "\nwords[0] id = #{words[0].object_id}"
puts "\nwords_dupe[0] id = #{words_dupe[0].object_id}"
puts "\nwords[0][1][1][1][1][1][1][0] id = #{words[0][1][1][1][1][1][1][0].object_id}"
puts "\nwords_dupe[0][1][1][1][1][1][1][0] id = #{words_dupe[0][1][1][1][1][1][1][0].object_id}\n"
