def valid_triangle?(sides)
  return false if sides.any? { |s| s <= 0 }
  sorted = sides.sort
  sorted.first + sorted[1] > sorted.last
end

def triangle(s1, s2, s3)
  return :invalid unless valid_triangle?([s1, s2, s3])

  if s1 == s2 && s2 == s3
    :equilateral
  elsif s1 == s2 || s2 == s3 || s1 == s3
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid