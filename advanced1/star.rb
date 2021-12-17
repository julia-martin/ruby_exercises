def star(n)
  mid = n / 2
  spaces = (n - 3) / 2
  (0...mid).each do |i|
    puts "#{' ' * i}*#{' ' * spaces}*#{' ' * spaces}*"
    spaces -= 1
  end

  puts '*' * n

  front = mid - 1
  spaces = 0
  while front >= 0
    puts "#{' ' * front}*#{' ' * spaces}*#{' ' * spaces}*"
    spaces += 1
    front -= 1
  end
end

star(7)
star(9)