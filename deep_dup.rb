def deep_dup(orig_arr)
  duped_arr = orig_arr.dup
  duped_arr.map(&:dup)
end

def test(orig_arr)
  duped_arr = deep_dup(orig_arr)

  puts "orig id: #{orig_arr.object_id}"
  puts "duped id: #{duped_arr.object_id}"
  orig_arr.object_id == duped_arr.object_id ? (puts "result: method failed") : (puts "result: method worked")
  puts ""
  puts "orig[0] id: #{orig_arr[0].object_id}"
  puts "duped[0] id: #{duped_arr[0].object_id}"
  orig_arr[0].object_id == duped_arr[0].object_id ? (puts "result[0]: method failed") : (puts "result[0]: method worked")
  puts ""
  puts "orig[1] id: #{orig_arr[1].object_id}"
  puts "duped[1] id: #{duped_arr[1].object_id}"
  orig_arr[1].object_id == duped_arr[1].object_id ? (puts "result[1]: method failed") : (puts "result[1]: method worked")
end

arr = [ [1, 2], [3, 4] ]
deep_dup(arr)
test(arr)