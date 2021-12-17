def sum_square_difference(num)
  first = ((1..num).sum)**2
  second = (1..num).map { |n| n**2 }.sum
  first - second
end

puts sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150