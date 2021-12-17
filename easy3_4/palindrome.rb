def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(str)
  palindrome?(str.downcase.gsub(/[^a-z0-9]/, ''))
end

def palindromic_number?(num)
  num.to_s.reverse == num.to_s
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true