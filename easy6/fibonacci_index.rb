def find_fibonacci_index_by_length(len)
  return 1 if len == 1
  idx = 2
  a = 1
  fib = 1
  loop do
    idx += 1
    fib, a = a + fib, fib
    return idx if fib.to_s.size == len
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847