def valid_triangle?(angles)
  angles.sum == 180 && angles.all? { |a| a > 0 }
end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  return :invalid unless valid_triangle?(angles)
  if angles.any? { |a| a == 90 }
    :right
  elsif angles.all? { |a| a < 90 }
    :acute
  else
    :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid