def merge(arr1, arr2)
  new_arr = arr1.clone
  arr2.each do |elem|
    new_arr << elem unless new_arr.include?(elem)
  end
  new_arr
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]