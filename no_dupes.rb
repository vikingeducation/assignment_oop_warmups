def no_dupes (array)
  result = []
  array.each do |i|
    result << i unless result.include?(i)
  end
  return result
end
