def bubble_sort!(arr)
  swaps_made = true
  while swaps_made
    swaps_made = false
    (0...arr.size - 1).each do |idx|
      next if (block_given? && yield(arr[idx], arr[idx + 1])) ||
        (!block_given? && arr[idx] <= arr[idx + 1])
      arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1]
      swaps_made = true
    end
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
puts array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
puts array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
puts array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
puts array == %w(alice bonnie Kim Pete rachel sue Tyler)