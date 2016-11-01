def deep_dup(arr_with_arrs)
  arr_with_arrs.map do |inner_arr|
    if inner_arr.is_a?(Array)
      inner_arr.each do |elem|
        deep_dup(elem) if elem.is_a?(Array)
      end
      inner_arr.dup
    end
  end
end