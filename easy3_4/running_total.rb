def running_total(arr)
  totals = []
  arr.each_with_index do |elem, idx|
    totals << arr[0..idx].sum
  end
  totals
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []