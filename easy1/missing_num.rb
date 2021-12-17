def missing(arr)
  range = (arr.first..arr.last)
  nums = []
  range.each do |num|
    nums << num unless arr.include?(num)
  end
  nums
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []