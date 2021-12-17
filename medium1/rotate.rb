def rotate_array(arr)
  return arr if arr.size == 1
  arr[1..-1] << arr.first
end

def rotate_rightmost_digits(number, n)
  len = number.to_s.size - n
  unchanged = number.to_s.chars[0, len]
  to_rotate = number.to_s.chars[-n, n]
  (unchanged + rotate_array(to_rotate)).join.to_i
end

def max_rotation(number)
  n = number.to_s.size
  while n > 1
    number = rotate_rightmost_digits(number, n)
    n -= 1
  end
  number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845