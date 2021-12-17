def sum(num)
  digits = num.to_s.split('').map { |d| d.to_i }
  digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45