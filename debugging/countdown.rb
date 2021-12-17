def decrease(counter)
  counter -= 1
end

START = 10
counter = START

START.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'