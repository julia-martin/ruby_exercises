def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |elem, idx|
    new_arr << elem * arr2[idx]
  end
  new_arr
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]