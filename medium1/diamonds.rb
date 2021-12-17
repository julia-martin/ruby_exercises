def draw_line(spaces, stars)
  puts "#{' ' * spaces}#{'*' * stars}#{' ' * spaces}"
end

def diamond(n)
  mid = n / 2
  spaces = mid
  stars = 1

  loop do
    draw_line(spaces, stars)
    break if stars == n
    stars += 2
    spaces -= 1
  end

  while stars > 2
    stars -= 2
    spaces += 1
    draw_line(spaces, stars)
  end
end

diamond(1)
diamond(3)
diamond(9)