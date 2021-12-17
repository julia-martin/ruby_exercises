def triangle(n)
  stars = n
  while stars > 0
    puts "#{'*' * stars}#{' ' * (n - stars)}"
    stars -= 1
  end
end

triangle(5)
triangle(9)