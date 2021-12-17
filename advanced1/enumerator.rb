def factorial(n)
  return 1 if n <= 1
  return n * factorial(n - 1)
end

enum = Enumerator.new do |y|
  n = 0
  loop do
    f = factorial(n)
    y << f
    n += 1
  end
end

puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts ""
puts enum.next
puts enum.next
puts enum.next

enum.rewind
puts ""
puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts enum.next
puts enum.next
