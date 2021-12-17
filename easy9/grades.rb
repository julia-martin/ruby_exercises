def get_grade(s1, s2, s3)
  score = (s1 + s2 + s3).to_f / 3
  case
  when score >= 90
    'A'
  when score >= 80
    'B'
  when score >= 70
    'C'
  when score >= 60
    'D'
  else
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"