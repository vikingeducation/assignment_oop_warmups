def deep_dup(arr)
  if arr.empty?
    return []
  elsif arr.first.is_a?(Array)
    return deep_dup(arr.first) + deep_dup(arr[1..-1])
  else
    return [arr.dup]
  end
end
