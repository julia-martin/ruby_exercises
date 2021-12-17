def leading_substrings(str)
  substrs = []
  str.chars.each_with_index do |_, idx|
    substrs << str[0..idx]
  end
  substrs
end

def substrings(str)
  substrs = []
  (0...str.size).each do |idx|
    substrs.concat(leading_substrings(str[idx..-1]))
  end
  substrs
end

def palindromes(str)
  substrs = substrings(str)
  substrs.select do |s|
    s.size > 1 && (s.reverse == s)
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]