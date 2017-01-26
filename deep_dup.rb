def first(arr)
  arr[0]
end

def rest(arr)
  arr[1..-1]
end

def deep_dup(arr)
  if arr.empty?
    return []
  elsif first(arr).is_a?(Array)
    return deep_dup(first(arr)) + deep_dup(rest(arr))
  else
    return [arr.dup]
  end
end
