def deep_dup(orig_arr)
  duped_arr = orig_arr.dup
  duped_arr.map(&:dup)
end


arr = [ [1, 2], [3, 4] ]
deep_dup(arr)
