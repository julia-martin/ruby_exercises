def fibonacci(n)
  return 1 if n <= 2
  a = 1
  b = 1
  (3..n).each do
    a, b = b, a + b
  end
  b
end

def fibonacci_last(n)
  last_two = [1, 1]
  3.upto(n) do
    last_two = [last_two.last, (last_two.first + last_two.last) % 10]
  end
  last_two.last
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4