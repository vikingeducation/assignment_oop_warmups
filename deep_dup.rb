def deep_dup(arr)
  arr.dup.map do |ele|
    case ele
    when Integer
      ele
    when
  end
end

array = [1,2,[2,3]]
dup_array = deep_dup(array)

p array[2].object_id == dup_array[2].object_id