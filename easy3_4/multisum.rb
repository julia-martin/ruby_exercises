def multisum(num)
  multiples = (1..num).select { |x| (x % 3 == 0) || (x % 5 == 0)}
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168