# Goes infinite levels!
# For simple dup of 1 more level, see deep_dup.rb

def infinite_deep_dup(orig_arr)
  duped_arr = orig_arr.dup
  duped_arr.map do |item|
    item.is_a?(Array) ? infinite_deep_dup(item) : item
  end
end

def test(orig_arr)
  duped_arr = infinite_deep_dup(orig_arr)

  puts "Original Array"
  puts "orig id: #{orig_arr.object_id}"
  puts "duped id: #{duped_arr.object_id}"
  orig_arr.object_id == duped_arr.object_id ? (puts "result: method failed") : (puts "result: method worked")
  puts ""
  puts "Array[0]: [ 1, [ _ ] ]"
  puts "orig[0] id: #{orig_arr[0].object_id}"
  puts "duped[0] id: #{duped_arr[0].object_id}"
  orig_arr[0].object_id == duped_arr[0].object_id ? (puts "result[0]: method failed") : (puts "result[0]: method worked")
  puts ""
  puts "Array[0][1]: [ _, [ 2, 3 ] ]"
  puts "orig[0][1] id: #{orig_arr[0][1].object_id}"
  puts "duped[0][1] id: #{duped_arr[0][1].object_id}"
  orig_arr[0][1].object_id == duped_arr[0][1].object_id ? (puts "result[0][1]: method failed") : (puts "result[0][1]: method worked")
end


deeper_arr = [
  [ 1, [ 2, 3 ] ],
  [ 4, 5, 6],
  [ [ 7, 8, [ 9, 10 ]], [11, 12] ],
]

infinite_deep_dup(deeper_arr)
test(deeper_arr)

