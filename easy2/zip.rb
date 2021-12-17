def zip(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |elem, idx|
    new_arr << [elem, arr2[idx]]
  end
  new_arr
end

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]