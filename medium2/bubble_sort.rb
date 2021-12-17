def bubble_sort!(arr)
  swaps_made = true
  while swaps_made
    swaps_made = false
    (0...arr.size - 1).each do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1]
        swaps_made = true
      end
    end
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)